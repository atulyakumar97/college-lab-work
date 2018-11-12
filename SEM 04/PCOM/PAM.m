clc
clear all
close all

t=0:0.1:5;
y=sin(pi*t);
x=ones(size(t));
z=x.*y;

subplot(3,1,1)
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
title('Modulating Signal')

subplot(3,1,2)
stem(t,x)
xlabel('Time')
ylabel('Amplitude')
title('Carrier Signal')

subplot(3,1,3)
stem(t,z)
xlabel('Time')
ylabel('Amplitude')
title('PAM Output')

