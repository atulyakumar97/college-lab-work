clc;
clear all;
s=%s
h=1/(s^2+7*s+10)
t=0.2
h_pf=pfss(h)

A=strtod(pol2str(numer(h_pf(1))))
B=strtod(pol2str(numer(h_pf(2))))

pA=roots(denom(h_pf(1)))
pB=roots(denom(h_pf(2)))

disp(h,'h = ')
disp(h_pf,'h_pf = ')
disp(A,'A = ')
disp(B,'B = ')
disp(pA,'pA = ')
disp(pB,'pB = ')

z=%z
h_z=A/(1-exp(pA*t)*z^(-1))+B/(1-exp(pB*t)*z^(-1))
disp(h_z,'h_z = ')




