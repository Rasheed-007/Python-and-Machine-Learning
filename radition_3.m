clc;clear ;close;
phi=(0:1:360).*(pi/180);
n=input('Enter the number of soureces:');
d=input('Enter the spacing between the sources as fraction of wavelength :');
delta=input('Enter the phase difference between the sources : ');
psi=(2*pi*d*cos(phi)) +delta;
E=(1/n)*sin(n*psi/2)./sin(psi/2);
polarplot(phi,abs(E),'LineWidth',3);