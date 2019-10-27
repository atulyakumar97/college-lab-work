% RX sensitivity=-42 db/m TX power=50um
%Ploss=2*lc+alpha*L+SM(6db); lc(end connector loss = 1 db)
%attenuation constant of fiber(alpha)=3.5 db/km
Pt=ceil(20*log(0.5))
Pr=(-42)
Pl=(Pt-Pr)
lc= 1;
Sm=6;
alphaf=3.5;
L=(Pl-2*lc-Sm)/alphaf
L=[0 1 2 3 4 5 6]
for i=1:length(L)
    p_level(i)=-14-(3.5*L(i));
end
plot(L,p_level)
grid on
title('Power Level V/s Distance');
xlabel('Distance');
ylabel('Power Level');
