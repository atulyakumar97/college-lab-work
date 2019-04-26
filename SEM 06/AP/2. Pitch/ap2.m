clear all
close all 
clc
[y,fs]=audioread('s1.wav');

n=length(y);
t=(1:1:n)/fs;
figure
plot(t,y)

ms20=fs/50;
ms2=fs/500;

r=xcorr(y,ms20,'coeff');
d=(-ms20:ms20)/fs;      % plot autocorrelation (since output is an even function)

figure
plot(d,r)

r=r(floor(length(r)/2:end)); % just look at region corresponding to positive delays

figure
stem(r)
 
[rmax,tx]=max(r(ms2:ms20))

fprintf('rmax=%g Fx=%gHz for first peak\n',rmax,fs/(ms2+tx-1));

