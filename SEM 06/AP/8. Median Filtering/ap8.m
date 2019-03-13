%Median Filter

clc
clear all
close all

[y,fs]=audioread('s1.wav');
length(y)
window_len=10;

for i = 1:length(y)-10
    final1(i)=median(y(i:i+9));
    i=i+5;
end

final2=medfilt1(y);

figure(1)
subplot(3,1,1)
plot(y(4000:6000))
title('Original')

subplot(3,1,2)
plot(final1(4000:6000))
title('Median Filtering using code')

subplot(3,1,3)
plot(final2(4000:6000))
title('Median Filtering using inbuilt function')