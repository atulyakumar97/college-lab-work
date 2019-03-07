clc
close all
clear all

%awp 5
fr=input('Enter frequency in ghz : '); %f in ghz
Er=input('Enter Er : '); 
h=0.16; %h in cm

k = 8.794/(fr*sqrt(Er))
r=k/sqrt(1+((2*h)/(pi*Er*k))*(reallog(pi*k/(2*h))+1.7726))  %r in cm