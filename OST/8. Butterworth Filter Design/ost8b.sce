clc
clear all

ws=2
wp=4.828
alpha_p=3
alpha_s=15
N=1/2*log(((10^(0.1*alpha_s))-1)/((10^(0.1*alpha_p))-1))/log(wp/ws)
N=ceil(N)

wc = wp/((10^(0.1*alpha_p)-1)^(0.5*N))

s=%s
h=1/(s^2+(2^0.5)*s+1)
response=horner(h,s/wc)

disp(N, 'N = ')
disp(wc, 'wc = ')
disp(h, 'h = ')
disp(response, 'Response = ')
