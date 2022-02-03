function [] = plot_final_error(xs_frame,result,marginals)



import gtsam.*

Pose3Values = gtsam.utilities.allPose3s(result);

keys = KeyVector(Pose3Values.keys);

if keys.size==0
    disp('No results')
    return
end

key_end = keys.at(keys.size-1);
x_end = Pose3Values.atPose3(key_end);

x_frame_end = xs_frame(end,:);

P = marginals.marginalCovariance(key_end);

figure()
plotPlanarPose2(x_end,'k', P);
grid on
hold on
% plot(x_frame_end(1),x_frame_end(2),'g+','MarkerSize',5);

