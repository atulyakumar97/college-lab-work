clc
clear all

N=31
n=-15:15

h=(1/4)*sinc(n*3.14/4)
w=0.54+0.46*cos(2*3.14*n/(N-1))
//whm = window('hm', N);

figure(1)
plot2d3(n,h)
a=gca();
a.x_location="origin"
a.y_location="origin"
title('Impulse response of the Desired Filter')
xlabel('Discrete Time')
ylabel('Impulse Response')

figure(2)
plot2d3(n,w)
a=gca();
a.x_location="origin"
a.y_location="origin"
title('Hamming Window')
xlabel('Discrete Time')
ylabel('Amplitude')

figure(3)
x=w.*h
plot2d3(n,x)
a=gca();
a.x_location="origin"
a.y_location="origin"
title('Impulse response of the Designed Filter')
xlabel('Discrete Time')
ylabel('Amplitude')

figure(4)
[xm,fr]=frmag(x,256)
plot(fr,xm)
a=gca();
title('Frequency response of the Designed Filter')
xlabel('Discrete Frequency')
ylabel('Amplitude')
