function [acc_meas,w_meas] = IMU_meas_from_unicycle(t,x,PS,IMU_params)


x_dot = planar_dyn(t,x,PS);

% th = x(4);
w = x(5);

v_dot = x_dot(3);

acc_noise = randn(3,1).*sqrt(diag(IMU_params.getAccelerometerCovariance));
acc_meas = [0;-PS.g;v_dot]+acc_noise+PS.imu_bias(1:3);

w_noise = randn(3,1).*sqrt(diag(IMU_params.getGyroscopeCovariance));
w_meas = [0;w;0]+w_noise+PS.imu_bias(4:6);



