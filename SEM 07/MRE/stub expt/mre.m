clc
clear all
close all
ZL=75+150j;
Zo=50;
f=1*10^9;
c=3*10^8;
lambda=c/f;
dstub=(lambda/2*pi)*abs(atan(sqrt(ZL/Zo)))
Lstub=(lambda/2*pi)*abs(atan(ZL*Zo/(ZL-Zo)))
