function [u_L,u_R] = get_stereo_planar_pixels(t,ts,xs,ls,PS)


x = interp1(ts,xs,t);

th = x(4);
R = [cos(th),-sin(th);
    sin(th),cos(th)];

ls_rel = ls(:)-[x(1);x(2)];
ls_cam = R*ls_rel;

pos_L = ls_cam;

pos_R = ls_cam-[PS.baseline;0];

u_L = PS.focal_length*pos_L(1)/pos_L(2);
u_R = PS.focal_length*pos_R(1)/pos_R(2);

% key_ls = ls(ls_in_fov,:);