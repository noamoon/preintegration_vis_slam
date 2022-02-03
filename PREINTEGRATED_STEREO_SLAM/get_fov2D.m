function fov_area = get_fov2D(x,PS,t_cam)





th = x(4);

cam_vec = [cos(th),sin(th);-sin(th),cos(th)]*[t_cam;0];

px = x(1)+cam_vec(1);
pz = x(2)+cam_vec(2);

R = PS.R_fov;

a = PS.fov/2;


fov_area_x = px+[0,R*sin(th+a),R*sin(th-a),0];
fov_area_z = pz+[0,R*cos(th+a),R*cos(th-a),0];

fov_area = [fov_area_x;fov_area_z];

