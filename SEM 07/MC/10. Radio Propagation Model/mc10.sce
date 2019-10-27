//Question 1
clc
clear all
Gt = 10^(5/10)
Pt = 113;
r = 11*(10^3);
pi = 3.14
EIRP = Pt*Gt;
Pd = EIRP/(3*pi*(r^2))
disp('Power density : ');
disp(Pd);
disp('EIRP value : ');
disp(EIRP);

//Question 2
fc = 800*10^6;
ht = 30;
hr = 2;
r = 10000;
rkm = 10;
fcm = 800;
Lpm = 40*log10(r)-20*log10(ht)-20*log10(hr);
Lpf = 32.44 + 20*log10(rkm) + 20*log10(fcm);
disp('Propogation path loss cf model : ');
disp(Lpm);
disp('Propogation path loss of freespace : ');
disp(Lpf);


//Question 3
ptw = 100;
ptmw = ptw*(10^3);
PTdbm = 10*log10(ptmw);
disp('Transmitted power in dB : ')
disp(PTdbm)
pr = -100;
lp = PTdbm - pr;
lo = 30;
y = 4;
r = 10^((lp-lo)/40);
disp('Propogation path loss : ')
disp(lp);
disp('Radio coverage range: ')
disp(r);


//Question 4
fc = 1100;
ht = 30;
hr = 2;
r = 10;
Lph = 68.75 + 26.16*log(fc)-13.82*log10(ht)+(44.9-6.55*log10(ht))*log10(r);
disp('Propogation path loss using HATA model')
disp(Lph);
loss = 110.5;
x = Lph - loss
disp(x)

//Question 5
fc = 900*(10^6);
r = 1000;
c = 3*(10^8);
lc = c/fc;
Lpf = 20*log10(4*3.14*r/lc);
disp('Free space path loss:')
disp(Lpf);



//Question 6
Pt = 10;
gt = 9;
gr = 4;
fc = 250;
r = 25;
lr = 0.2;
cl = 20;
ca = 30/100;
Ptdbm = 10*log10(Pt*1000);
disp(Ptdbm)
Lpf = 32.44+20*log10(r)+20*log10(fc);
disp(Lpf)
Lt = cl*ca;
Pr = Ptdbm-lr+gt-Lpf+gr-lr;
disp('Power delivered to the receiver: ');
disp(Pr)

