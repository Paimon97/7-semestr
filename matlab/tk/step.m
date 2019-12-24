function [xi1, vi1, ai1] = step(xi ,vi, ai, m, c, k, f, dT)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
alp=0.25250625;
delt=0.505;
a0=1/(alp*dT^2);
a1=delt/(alp*dT);
a2=1/(alp*dT);
a3=1/(2*alp)-1;
a4=delt/alp-1;
a5=dT/2*(delt/alp-2);
a6=dT*(1-delt);
a7=delt*dT;
xi1=(f+m*(a0*xi+a2*vi+a3*ai)+c*(a1*xi+a4*vi+a5*ai))/(a0*m+a1*c+k);
ai1=a0*(xi1-xi)-a2*vi-a3*ai;
vi1=vi+a6*ai+a7*ai1;
end

