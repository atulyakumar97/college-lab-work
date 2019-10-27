clc 
clear all
close all

% without noise
[digit1 digit2 digit3 digit4 digit5 digit6 digit7 digit8 digit9 digit0]=bit_maps;
p=[digit0(:) digit1(:) digit2(:) digit3(:) digit4(:) digit5(:) digit6(:) digit7(:) digit8(:) digit9(:)];
t=eye(10);
net=newff(minmax(p),[20 10]);
net1=train(net,p,t);
a=digit6(:)+rand(45,1)*0.2;
y=sim(net1,a);
round(y)

