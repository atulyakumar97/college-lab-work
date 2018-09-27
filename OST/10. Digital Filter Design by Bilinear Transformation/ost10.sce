clc;
clear all;
s=%s
h=2/((s+1)*(s+2))
t=0.2

disp(h,'h = ')

z=%z
s=(2/t)*((z-1)/(z+1))
h_z=horner(h,s)
disp(h_z,'h_z = ')




