clc;
close all;
clear all;

theta = 0:pi/180:2*pi;
lambda=1;

l=1/50;

k=2*pi/lambda;

U = power((cos(k*l/2 .* cos(theta))-cos(k*l/2))./sin(theta) ,2)
polar(theta,U)