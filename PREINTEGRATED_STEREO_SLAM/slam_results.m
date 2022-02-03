function [] = slam_results(ts,xs,ts_frame,xs_frame,ls_num_frame,ls_track,result)

import gtsam.*

P = utilities.extractPoint3(result);

Pose3Values = gtsam.utilities.allPose3s(result);

keys = KeyVector(Pose3Values.keys);

if keys.size==0
    disp('No results')
    return
end

% Plot poses and covariance matrices

px_res = zeros(1,keys.size);
pz_res = zeros(1,keys.size);

for i = 0:keys.size-1
  key = keys.at(i);
  x = Pose3Values.atPose3(key);
  R = x.rotation;
  t = x.translation;
  
  px_res(i+1) = t(1);
  pz_res(i+1) = t(3);
  
  
end
    

figure()

plot(px_res,pz_res,'b+');
grid on
hold on
px = xs(:,1);
pz = xs(:,2);
plot(px,pz,'.');


num_ls = size(ls_track,1);

ls_res = P(1:num_ls,[1,3]);
vel_res = P(num_ls+1:end,[1,3]);

plot(ls_res(:,1),ls_res(:,2),'g*')

plot(ls_track(:,1),ls_track(:,2),'sk')

legend('Estimated Position','Actual Position')

print -depsc2 unicycle_2d_results.eps

xlabel('x','fontsize',16)
ylabel('z','fontsize',16)





error_posistion_x = px_res(:) - xs_frame(:,1);
error_posistion_z = pz_res(:) - xs_frame(:,2);


figure() %plotting the error in the position vs time 
subplot(2,1,1)
plot(ts_frame, error_posistion_x,'r','LineWidth',2);
hold on
title('Position Error vs. Time')
xlabel('Time [sec]')
ylabel('error in x [m]')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Position Error in x','Time')

subplot(2,1,2)
plot(ts_frame, error_posistion_z,'r','LineWidth',2);
hold on
xlabel('Time [sec]')
ylabel('error in z [m]')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Position Error in z','Time')


% velocity error

error_velocity_x = vel_res(:,1) - xs_frame(:,3);
error_velocity_z = vel_res(:,2) - xs_frame(:,5);


figure() %plotting the error in the velocity vs time
subplot(2,1,1)
plot(ts_frame, error_velocity_x,'r','LineWidth',2);
hold on
title('Velocity Error vs. Time [m/s]')
xlabel('Time [sec]')
ylabel('error in v_x')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Velocity Error in v_x','Time')

subplot(2,1,2)
plot(ts_frame, error_velocity_z,'r','LineWidth',2);
hold on
xlabel('Time [sec]')
ylabel('error in v_z [m/s]')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Velocity  Error in v_z','Time')


position_error_norm = sqrt(error_posistion_x.^2 + error_posistion_z.^2);


figure() %plotting the error in the position vs number of features 
% subplot(2,1,1)
scatter(ls_num_frame ,position_error_norm(2:end),'r','.');
hold on
title('Error in the position vs number of Features ')
xlabel('Number of features recieved by the camera')
ylabel('Norm of the error value [m]')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Position Error size')


velocity_error_norm = sqrt(error_velocity_x.^2 + error_velocity_z.^2);

figure()
% subplot(2,1,2)
scatter(ls_num_frame,velocity_error_norm(2:end),'r','.');
hold on
title('Error in the velocity vs number of Features ')
xlabel('Number of features recieved by the camera')
ylabel('Norm of the error value [m/s]')
% xlim([0 20000])
% ylim([-0.5 0.5])
legend('Velocity Error size')
