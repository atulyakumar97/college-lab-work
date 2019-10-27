clc;
clear all;
close all;

tf=input('Enter The value of Fictive temp (TF): ');
bc=input('Enter the value of isothermal compressibility Bc: ');
n=input('Enter th evalue of RI: ');
p=input('Enter the value of photoelastic coeff p: ');
k =(1.381* 10^(-23));
w1 = [0.63 1 1.30]*10^(-6);
for i=1:3
AR1(i) = (8*(pi^3)*(n^8)*(p^2)*bc*k*tf)/(3*(w1(i)^4));
L1(i)=exp(-AR1(i)*1000);
al1(i)=10*log10(L1(i));
end

AR1
L1
al1

w2=(770:1700)*10^(-9);
for i=1:length(w2)
AR2(i) = (8*(pi^3)*(n^8)*(p^2)*bc*k*tf)/(3*(w2(i)^4));
end


figure(1)
plot(AR2,w2)
title('Study of rayleighs scattering ')
xlabel('wavelength')
ylabel('attenutaion')