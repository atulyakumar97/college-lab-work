n=20
p=0.5
q=1-p 
for r=1:20
    s(r)=factorial(n)/(factorial(n-r)*factorial(r));
    s(r)=s(r)*p^r*q^(n-r);
    sum=0
    for i=1:r
       sum=sum+s(i);
    end
   k(r)=(sum);
    end
figure(1)
stem(s)
figure(2)
stairs(k)
