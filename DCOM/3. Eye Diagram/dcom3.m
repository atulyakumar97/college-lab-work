clc
clear all
close all
m=input('No. of Symbols = ');
n=input('SNR = ');
data=randint(1000,1,m);
x1=pskmod(data,m);
%Introducing Noise, input signal=x1 and SNR=n
x2=awgn(x1,n);
scatterplot(x1,m);
x3=pskdemod(x2,m);
%Number of error bits and ratio
[number_x,ratio_x]=symerr(data,x3);
eyediagram(x3,4);

y1=qammod(data,m);
%Introducing Noise, input signal=y1 SNR=n
y2=awgn(y1,n);
scatterplot(y1,m);
y3=qamdemod(y2,m);
%Number of error bits and ratio
[number_y,ratio_y]=symerr(data,y3);eyediagram(y3,4);