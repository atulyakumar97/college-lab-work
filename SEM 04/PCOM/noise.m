clc
clear all
close all
t=0:0.001:0.1;
y=sin(2*pi*50*t);
x=randn(size(t));
z=x+y;

subplot(3,1,1)
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
title('Modulating Signal')

subplot(3,1,2)
plot(t,x)
xlabel('Time')
ylabel('Amplitude')
title('Noise Signal')

subplot(3,1,3)
plot(t,z)
xlabel('Time')
ylabel('Amplitude')
title('Resultant Wave')

