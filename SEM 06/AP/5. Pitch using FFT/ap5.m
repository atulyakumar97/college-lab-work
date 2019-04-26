%Pitch Using FFT

clear all
close all 
clc
[y,fs]=audioread('s1.wav');

n=length(y);
t=(1:1:n)/fs;
figure
plot(t,y)

N=1024;

fft_y=fft(y,N);
abs_fft_y=abs(fft_y);

figure
plot(abs_fft_y); 

[value,index]=max(abs_fft_y(2:end));
index=index+1 %since we are removing first value in the above statement

pitch=(fs/N)*index