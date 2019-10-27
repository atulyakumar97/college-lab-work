clc;
clear all;
close all;
n1 = 1.47; %core refrative index   
n2 = 1.46; %cladding refrative index
d = 50*(10^(-6)); %core diameter
lamda = (1550 * 10^(-9)); %wavelength
 
NA = sqrt(((n1^2)-(n2^2)));
disp('Numerical apperture is:')
disp(NA);
 
theta = asind(NA);
disp('Acceptance angle is:')
disp(theta);
 
phy = asind(n2/n1);
disp('Critical angle is:')
disp(phy);
 
V = ((2*NA*3.14*(d/2))/lamda);
disp('Normalised frequency is:')
disp(V);
 
M = (V^2)/2;
disp('Number of modes is:')
disp(M);
