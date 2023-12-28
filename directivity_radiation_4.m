clc;clear;close;
L=input('\n Length of dipole in wavelengths: ');
eta=120*pi;
I0=1;
theta=(1:1:180)*pi/180;
dth=theta(2)-theta(1);
U=eta*(abs(I0)^2/(8*pi^2))*((cos((L*pi)*cos(theta))-cos(L*pi))./sin(theta)).^2;
UMAX=max(U);
Prad=sum(U.*sin(theta)*dth*2*pi);
D=(4*pi*UMAX)/Prad;
d_db=10*log10(D);
Rr=(2*Prad)/(abs(I0)^2);
z=linspace(-L/2,L/2,1000);I=sin(2*pi*(L/2-abs(z)));
figure(1),plot(z,abs(I));
xlabel('z^{\prime}/\lambda','FontSize',12);
ylabel('Normalized current distribution','FontSize',12);


theta=(1:1:360)*(pi/100);
r=10;
lambda=0.3;
k=(2*pi)/lambda;
L=lambda/2;
E=1*i*eta*I0*exp(-1*i*k*r)*(1/(2*pi*r))*((cos(k*L*cos(theta)/2)-cos(k*L/2))./sin(theta));
figure(2);
polarplot(theta,abs(E));

fprintf('/n Maximum radiated power : %fwatts\n',Prad);
fprintf('\nMaximum directivity : %f\n',D);
fprintf('\nMaximum directivity in dBm :%f(dBi)\n',d_db);
fprintf('\nRadiation resistance : %fohms\n',Rr);