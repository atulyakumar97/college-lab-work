clc;
clear all;
close all;
 
c=30;
h=0.16;
er=4.3;
f=input('Enter Frequency in GHz');
 
w = c/(2*f*sqrt((er+1)/2));
ereff = (er+1)/2 + ((er-1)/2) *((1+ 10*h/w)^(-0.5));
k=2;
 
while k>1
    Le=c/(2*f*sqrt(ereff));
    dL=h/sqrt(ereff);
    L=Le-2*dL;
    We=1.2*Le;
    
    ernew = (er+1)/2 + (er-1)/2 * (1+ 10*h/We)^(-0.5);
    k=(ernew-ereff)*100;
    
    ereff=ernew
end
 
L
W=1.2*L
