clc;
clear all;
close all;
a1=input('Enter area : ');
a2=input('Enter area of each cell : ');
s1=input('Enter no of channels : ');
size=input('Enter cluster size : ');

area1=a2*size;
m1=a1/area1;
k1=s1/size;
c1=m1*s1;

m1
k1
disp('System Capacity : ')
disp(c1)
%q=((3*0.2)^0.5);
%disp(q)
q=input('Enter the Reuse Factor : ');
r=(((a2*2)/(3*1.732))^0.5)
d=q*r;
disp('Minimum Re-usable distance : ')
disp(d)
