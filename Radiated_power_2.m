clc;close all; clear all;
format long;
phi_degree=0:360;
phi_rad=phi_degree*pi/180;

theta_degree=0:180;
theta_rad=theta_degree*pi/180;

dth=theta_rad(2)-theta_rad(1);
dph=phi_rad(2)-phi_rad(1);

[THETA,PHI]=meshgrid(theta_rad,phi_rad);

U=(sin(theta_rad.*sin(PHI))).^2;

P_avg=sum(sum(U.*sin(THETA)*dth*dph));


D=4*pi*max(max(U))/P_avg;h
D_db=10*log10(D);
fprintf("Average Power radiated by the antenna is %f\n",P_avg);
fprintf("directivity of the antenna is %f(dimensionless) and %f (in dB)y\n",D,D_db);
