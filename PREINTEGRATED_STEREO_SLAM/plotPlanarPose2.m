function plotPlanarPose2(pose,color,P)

import gtsam.*

plot(pose.x,pose.y,[color '*']);
hold on

R = pose.rotation;
theta = R.pitch;

c = cos(theta);
s = sin(theta);

pPp = P(1:2,1:2); % covariance matrix in pose coordinate frame
gRp = [c -s;s c]; % rotation from pose to global
gtsam.covarianceEllipse([pose.x;pose.y],gRp*pPp*gRp',color);
