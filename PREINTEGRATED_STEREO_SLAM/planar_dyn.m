function x_dot = planar_dyn(t,x,PS)


% x = [px,pz,v,th,w]

v = x(3);
th = x(4);
w = x(5);

px_dot = v*sin(th);
pz_dot = v*cos(th);
v_dot = PS.a_mag*sin(PS.a2t*t);
th_dot = w;
w_dot = PS.w_mag*sin(PS.w2t*t);

x_dot = [px_dot;pz_dot;v_dot;th_dot;w_dot];