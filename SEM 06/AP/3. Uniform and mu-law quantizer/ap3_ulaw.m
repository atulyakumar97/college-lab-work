clc
clear all 
close all

y = [1.2 -0.2 -0.5 0.4 0.89 1.3];
disp('input sequence')
disp(y)
Xmax=max(abs(y));
max=1.5;
min=-1.5;
mu=9;

for i=1:length(y)
    x(i)=(Xmax/mu)*(power(10,(log(1+mu)*abs(y(i))/Xmax))-1)*sign(y(i));
end
disp('Output sequence')
disp(x)