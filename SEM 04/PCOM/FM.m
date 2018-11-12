clc
clear all
close all
t=0:0.0001:10;
ec=1;
em=1;
mf=5;
wc=50;
wm=5;

carrier=ec*sin(wc*t);
modulatingsignal=em*sin(wm*t);
fm=ec*cos((wc*t)+mf*em*sin(wm*t));

subplot(3,1,1)
plot(t,modulatingsignal)
xlabel('Time')
ylabel('Amplitude')
title('Modulating Signal')

subplot(3,1,2)
plot(t,carrier)
xlabel('Time')
ylabel('Amplitude')
title('Carrier Signal')

subplot(3,1,3)
plot(t,fm)
xlabel('Time')
ylabel('Amplitude')
title('FM Signal')