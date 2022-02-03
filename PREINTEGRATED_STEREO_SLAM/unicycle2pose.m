function [R,t] = unicycle2pose(x)

px = x(1);
pz = x(2);
th = x(4);

c_th = cos(th);
s_th = sin(th);

R = [c_th   ,0     ,-s_th;
      0     ,1     ,  0;
      s_th  ,0     ,c_th];

t = [px,0,pz];