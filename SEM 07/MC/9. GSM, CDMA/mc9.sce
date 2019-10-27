
//Question 1 
Rb = 270.833;
Tb = 1/Rb;
disp(Tb);
B = 0.3/Tb;
disp(B);


//Question 2 
Rb = 270.833;
c = Rb/0.4;
disp(c);
b1 = 200;
snr = (2^(c/b1)) - 1;
disp(snr);


//Question 3 
b = 200;
Rb = 270.833
be = Rb/b
disp(be);

//Question 4 
bc = 1250;
rb = 9.6;
srmin = 3;
sumin_ratio = 10^(srmin/10);
disp(sumin_ratio);
mmax = (bc/rb)*(1/sumin_ratio);
disp(floor(mmax));
srmax = 9;
sumax_ratio = 10^(srmax/10);
disp(sumax_ratio);
mmin = (bc/rb)*(1/sumax_ratio);
disp(floor(mmin)) ;


