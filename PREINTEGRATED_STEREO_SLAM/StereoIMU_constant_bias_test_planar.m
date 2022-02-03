

clc
close all
clear all

% cd(pwd)
addpath(genpath(pwd))

import gtsam.*

%% Assumptions
%  - For simplicity this example is in the camera's coordinate frame
%  - X: right, Y: down, Z: forward
%  - Pose x1 is at the origin, 

%% Read metadata and compute relative sensor pose transforms
% IMU metadata
disp('-- Reading sensor metadata')
IMU_metadata = importdata(findExampleDataFile('KittiEquivBiasedImu_metadata.txt'));
IMU_metadata = cell2struct(num2cell(IMU_metadata.data), IMU_metadata.colheaders, 2);
IMUinBody = Pose3.Expmap([IMU_metadata.BodyPtx; IMU_metadata.BodyPty; IMU_metadata.BodyPtz;
    IMU_metadata.BodyPrx; IMU_metadata.BodyPry; IMU_metadata.BodyPrz; ]);
if ~IMUinBody.equals(Pose3, 1e-5)
    error 'Currently only support IMUinBody is identity, i.e. IMU and body frame are the same';
end

%% Get initial conditions for the estimated trajectory

sigma_init_x = noiseModel.Isotropic.Precisions([ 0.0; 0.0; 0.0; 1; 1; 1 ]);
sigma_init_v = noiseModel.Isotropic.Sigma(3, 1000.0);

sigma_imu_bias = [ 0.100; 0.100; 0.100; 1.00e-05; 1.00e-05; 1.00e-05 ];
sigma_init_b = noiseModel.Isotropic.Sigmas(sigma_imu_bias);

PS.imu_bias = randn(6,1).*sigma_imu_bias;

PS.g = 9.8;

g = [0;PS.g;0];
w_coriolis = [0;0;0];

IMU_params = PreintegrationParams(g);

IMU_params.setAccelerometerCovariance(IMU_metadata.AccelerometerSigma.^2 * eye(3));
IMU_params.setGyroscopeCovariance(IMU_metadata.GyroscopeSigma.^2 * eye(3));
IMU_params.setIntegrationCovariance(IMU_metadata.IntegrationSigma.^2 * eye(3));
IMU_params.setOmegaCoriolis(w_coriolis);


%% Create realistic calibration and measurement noise model
PS.R_fov = 10;

PS.fov = 0.4; %rad
PS.baseline = 0.5; %m
PS.focal_length = 1000; % pixels

% format: fx fy skew cx cy baseline
K = Cal3_S2Stereo(PS.focal_length, PS.focal_length, 0, 0, 0, PS.baseline);
% stereo_model = noiseModel.Isotropic.Sigma(3,1);
stereo_model = noiseModel.Diagonal.Sigmas([1.0; 1.0; 1.0]);
%% Create true trajectory

PS.t_cam_L = 0*PS.baseline;
PS.t_cam_R = PS.baseline;

freq_imu = 100;
PS.dt_imu = 1/freq_imu;

freq_cam = 10;
PS.dt_cam = 1/freq_cam;

N_imu_steps = PS.dt_cam/PS.dt_imu;

T = 20; %sec
N = T/PS.dt_imu+1;
ts = linspace(0,T,N);


PS.a_mag = 0.1;
PS.a2t = 0.05; % 1/sec

PS.w_mag = 0.1;
PS.w2t = 0.5; %1/sec

PS.alpha_z = 0.001; %rad/sec^2


px0 = 0;
pz0 = 0;
v0 = 1; %m/sec
th0 = 0; %rad
w0 = 0.1; %rad/sec
x0 = [px0,pz0,v0,th0,w0];

[ts,xs] = ode45(@(t,x)planar_dyn(t,x,PS),ts,x0);


%% create random landmarks
px = xs(:,1);
pz = xs(:,2);

N_ls = 100;
ls_x = PS.R_fov*(-1+2*rand(N_ls,1));
ls_z = PS.R_fov*(-1+2*rand(N_ls,1));
ls = [ls_x,ls_z];


%% Create graph container
graph = NonlinearFactorGraph;

initial = Values();


%%
    
elapsed_t_cam = 0;
j_pose = 0;

ls_track = [];
ls_in = NaN(1,2);

xs_frame = [];
ts_frame = [];
ls_num_frame = [];

%% init state
currentPoseGlobal = Pose3(); % initial pose is the reference frame (navigation frame)
currentVelocityGlobal = [0;0;0]; % the vehicle is stationary at the beginning

currentBias = imuBias.ConstantBias(0*PS.imu_bias(1:3), 0*PS.imu_bias(4:6));

%% initialize preintegration
currentSummarizedMeasurement = PreintegratedImuMeasurements(IMU_params,currentBias);



for i=1:N
    
       
    x = interp1(ts,xs,ts(i));
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    [accMeas,omegaMeas] = IMU_meas_from_unicycle(ts(i),x,PS,IMU_params);
    currentSummarizedMeasurement.integrateMeasurement(accMeas, omegaMeas, PS.dt_imu);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    fov_cam_L = get_fov2D(x,PS,PS.t_cam_L);
    fov_cam_R = get_fov2D(x,PS,PS.t_cam_R);
    
    if mod(elapsed_t_cam,PS.dt_cam)==0
        elapsed_t_cam = 0;
        
        if i==1
            
            j_pose = j_pose+1;
            currentPoseKey = symbol('x',j_pose);
            currentVelKey =  symbol('v',j_pose);
            BiasKey = symbol('b',j_pose);
            
            initial.insert(currentPoseKey, currentPoseGlobal);
            initial.insert(currentVelKey, currentVelocityGlobal);
            initial.insert(BiasKey, currentBias);
            
            first_pose = Pose3();
            % add a constraint on the starting pose
            graph.add(NonlinearEqualityPose3(currentPoseKey, first_pose));
            %             graph.add(PriorFactorPose3(currentPoseKey, currentPoseGlobal, sigma_init_x));
            graph.add(PriorFactorVector(currentVelKey, currentVelocityGlobal, sigma_init_v));
            graph.add(PriorFactorConstantBias(BiasKey, currentBias, sigma_init_b));
            
            xs_frame = [xs_frame;x];
            ts_frame = [ts_frame;ts(i)];
            
        else
            
            
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            ls_in_fov_L = get_fov_keypoints(ls,fov_cam_L);
            ls_in_fov_R = get_fov_keypoints(ls,fov_cam_R);
            in_stereo = find(ls_in_fov_L&ls_in_fov_R);
            
            ls_in = ls(in_stereo,:);
            
            
            
            if numel(in_stereo)>0
                
                xs_frame = [xs_frame;x];
                ts_frame = [ts_frame;ts(i)];
                ls_num_frame = [ls_num_frame;numel(in_stereo)];
            
                j_pose = j_pose+1;
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                
                previousPoseKey = currentPoseKey;
                previousVelKey = currentVelKey;
                
                
                currentPoseKey = symbol('x',j_pose);
                currentVelKey =  symbol('v',j_pose);
               
                % Create IMU factor
                graph.add(ImuFactor( ...
                    previousPoseKey, previousVelKey, ...
                    currentPoseKey, currentVelKey, ...
                    BiasKey, currentSummarizedMeasurement));
                % reset preintegration
                currentSummarizedMeasurement = PreintegratedImuMeasurements(IMU_params,currentBias);
                
            
                
                [R,t] = unicycle2pose(x);
                currentPoseGlobal = Pose3([R,[0;0;0];t,1]');
                
                initial.insert(currentPoseKey, currentPoseGlobal);
                initial.insert(currentVelKey, currentVelocityGlobal);
                
                
                for k=1:numel(in_stereo)
                    
                    [u_L,u_R] = get_stereo_planar_pixels(ts(i),ts,xs,ls_in(k,:),PS);
                    
                    u_L_meas = round(u_L);
                    u_R_meas = round(u_R);
                    %
%                     u_L_meas =  u_L;
%                     u_R_meas =  u_R;
                    currentLandmarkKey = symbol('l', in_stereo(k));
                    
                    graph.add(GenericStereoFactor3D(StereoPoint2(u_L_meas,u_R_meas,0), stereo_model, ...
                        currentPoseKey, currentLandmarkKey, K));
                    
                    if ~initial.exists(currentLandmarkKey)
                        ls_xyz = [ls(in_stereo(k),1),0,ls(in_stereo(k),2)]';
                        initial.insert(currentLandmarkKey,  Point3(ls_xyz) );
                        ls_track = [ls_track;ls(in_stereo(k),:)];
                    end
                    
                end
                
            end
            
        end
        
    end
    elapsed_t_cam = elapsed_t_cam+PS.dt_imu;
            
end
%%


%% optimize

fprintf(1,'Optimizing\n'); tic
optimizer = LevenbergMarquardtOptimizer(graph, initial);
result = optimizer.optimizeSafely();
toc

marginals = Marginals(graph, result);

imu_bias_est = result.atConstantBias(BiasKey);

imu_acc_bias_est_error = imu_bias_est.accelerometer-PS.imu_bias(1:3)
imu_gyro_bias_est_error = imu_bias_est.gyroscope-PS.imu_bias(4:6)
%% visualize initial trajectory, final trajectory, and final points

%%

plot_final_error(xs_frame,result,marginals);

%%
slam_results(ts,xs,ts_frame,xs_frame,ls_num_frame,ls_track,result)
%%
% create trajectory video
creat_video = 0;

if creat_video
    
    file_name = 'stereoIMU_planar.avi';
    
    create_planar_slam_video(ts,xs,ls,file_name,40,N,PS)
end
