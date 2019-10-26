clc
clear all
close all

Zl = input('Enter the load impedance : ');
Zo = input('Enter the source impedance : ');

f=3*10^9;
c=3*10^8;
lambda=c/f;

dstub=(lambda/(2*pi))*abs(atan(sqrt(Zl/Zo)))
Lstub=(lambda/(2*pi))*abs(atan((Zl*Zo)/(Zl-Zo)))
