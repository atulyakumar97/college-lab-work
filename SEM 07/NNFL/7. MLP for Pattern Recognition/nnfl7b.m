clc 
clear all
close all

%with noise
[digit1 digit2 digit3 digit4 digit5 digit6 digit7 digit8 digit9 digit0]=bit_maps;
p=[digit0(:) digit1(:) digit2(:) digit3(:) digit4(:) digit5(:) digit6(:) digit7(:) digit8(:) digit9(:)];
t=eye(10);
net=newff(minmax(p),[20 10]);

digit6(:)=digit6(:)+(rand(45,1)*0.2);
p1=[p p+rand(45,10)*0.1 p+rand(45,10)*0.2 p+rand(45,10)*0.3];
t1=[t t t t];
net2=train(net,p1,t1);
a1=digit6(:);
y2=sim(net2,a1);
round(y2)
