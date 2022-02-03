clc
close all


%% Create true trajectory



PS.fov = 0.4; %rad
PS.baseline = 0.5; %m
PS.focal_length = 1000; % pixels


t_cam_L = 0*PS.baseline;
t_cam_R = PS.baseline;

freq_imu = 100;
dt_imu = 1/freq_imu;

freq_cam = 10;
dt_cam = 1/freq_cam;

N_imu_steps = dt_cam/dt_imu;

T = 20; %sec
N = T/dt_imu;
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

PS.R_fov = 10;

%%


x = interp1(ts,xs,ts(200));

figure

fov_cam_L = get_fov2D(x,PS,t_cam_L);
fov_cam_R = get_fov2D(x,PS,t_cam_R);
a = patch(fov_cam_L(1,:),fov_cam_L(2,:),'red');
a.FaceAlpha = 0.2;

a = patch(fov_cam_R(1,:),fov_cam_R(2,:),'green');
a.FaceAlpha = 0.2;

grid on

axis equal

xlabel('x','fontsize',16)
ylabel('z','fontsize',16)

xlim([0,10])
ylim([0,10])