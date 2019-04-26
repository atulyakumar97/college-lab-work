clc
clear all;
close all;
N=input('Enter value of N : ');

k=2*pi;
d=0.5;
theta=0:(pi/180):2*pi;

beta=0;
psi=(k*d*cos(theta)+beta);
af=(sin(N*(psi/2))./(N*sin(psi/2)));
figure(1);
subplot(1,3,1);
polar(theta,af);
title('Broadside pattern')

beta=-k*d;
psi=(k*d*cos(theta)+beta);
af=(sin(N*(psi/2))./(N*sin(psi/2)));
figure(1);
subplot(1,3,2);
polar(theta,af);
title('End fire pattern at 0 degree')

beta=k*d;
psi=(k*d*cos(theta)+beta);
af=(sin(N*(psi/2))./(N*sin(psi/2)));
figure(1);
subplot(1,3,3);
polar(theta,af);
title('End fire pattern at 180 degree')
