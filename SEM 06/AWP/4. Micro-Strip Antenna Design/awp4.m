%AWP4

clc;
clear all;
close all;

%TM 10

f = input ('enter frequency in Ghz');
f=f*10^9;

Er = 2.33;
h = 0.16*10^-2; %metres 
c = 3*10^8;

W=c/(2*f*sqrt((Er+1)/2));
Ereff = (Er+1)/2 + ((Er-1)/2)*(1+(10*h)/W)^(-0.5);
k=2;

while k>1

    
    Le = c/(2*f*sqrt(Ereff));

    DL=h/sqrt(Ereff);
    L=Le-2*DL;
    We=1.2*Le;

    Ernew = (Er+1)/2 + ((Er-1)/2)*((1+(10*h)/We)^(-0.5));
    k = abs(Ernew - Ereff)*100;
    W=We;
    
end

L = Le-(2*DL);
W = 1.2*L;

disp(L*1000); %mm
disp(W*1000);

