clc
clear all
close all
lam_p= 980;
lam_p1=1480;
lam_s=1500;
lam_s1=1510;
ps_in=0.190;
Pp_in=0:200;
ps_out=ps_in+((lam_p/lam_s)*Pp_in);
ps_out1=ps_in+((lam_p1/lam_s1)*Pp_in);

plot(Pp_in,ps_out,Pp_in,ps_out1)
grid on
title('Ps out V/s Pp in')
xlabel('Ps out')
ylabel('Pp in')