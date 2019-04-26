close all;
clear all;
clc;
[y fs]=audioread('S1.wav');
fs;
y=y(:,1);
plot(y);
xlabel('Samples');
ylabel('Amplitude');

figure;
length(y);
n=length(y);
t=1/fs:1/fs:n/fs;
plot(t,y');
xlabel('Time');
ylabel('Amplitude');

figure;
fft(y,256);
plot(abs(fft(y,256)));
xlabel('n point');
ylabel('Absolute value of fft');

figure;
periodogram(y,[],'onesided',256,fs);