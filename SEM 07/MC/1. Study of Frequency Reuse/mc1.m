clc
close all
n1 = input('enter area to be covered: ');
n2 = input('enter area of each cell: ');
n3 = input('no of duplex channels available: ');
size = input('enter cluster size: ');

area1 = n2*size
m1 = n1/area1
k1 = n3/size
c1 = m1*k1
q = ((3*n2)^0.5)
r = (((n2*2)/(3*1.732))^0.5)
D = q*r
