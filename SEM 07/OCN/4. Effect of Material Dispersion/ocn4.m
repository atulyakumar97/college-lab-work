clc
clear all
close all

lambda=0.85;
c=3*(10)^8;
M1=((0.025)/(lambda*c))*(10)^12;
disp('M in ps (nm*km)^(-1)');
disp(M1);

sigma_m=(20/(c*lambda))*(0.025)*(10)^9;
disp('Sigma_m in ns km^(-1)');
disp(sigma_m);
sigma_m1=(0.0012/c)*(0.025)*(10)^12;
disp('Sigma_m1 in ns km^(-1)');
disp(sigma_m1);

lambda_1=0.85:0.1:1.5;
M1=((0.025)./(lambda_1*c))*(10)^12;
figure
plot(lambda_1,M1)
xlabel('Wavelength')
ylabel('Material Dispersion')