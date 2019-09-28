D = 50;
d = 0:0.1:50;
Pr = -85;
Ph = -95;
sig = 6;
k1 = 0;
k2 = 30;
u1 = k1 - k2*log(d);
u2 = k1 - k2*log(D-d);
Pout = (qfunc((u1 - Pr)./sig)).*(qfunc((u2-Pr)./sig));
plot(d,Pout)
title('Probability of outage vs d')
Passn1 = (qfunc((u1-Ph)./sig)).*(qfunc((Pr-u2)./sig));
Passn2 = (qfunc((u2-Ph)./sig)).*(qfunc((Pr-u1)./sig));
figure
plot(d,Passn1)
title('Probability of assignment to BTS1 vs d')
figure
plot(d,Passn2)
title('Probability of assignment to BTS2 vs d')
figure
plot(d,Passn1)
hold on
plot(d,Passn2)
hold off
