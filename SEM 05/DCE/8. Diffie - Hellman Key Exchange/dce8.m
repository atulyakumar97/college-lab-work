p=input('Enter a prime number : ');
alpha=input('Enter primitive root of prime number : ');

Xa=input('Enter a private key Xa : ');
Xb=input('Enter a private key Xb : ');

Ya=modexp(alpha,Xa,p);
Yb=modexp(alpha,Xb,p);

A=modexp(Yb,Xa,p)
B=modexp(Ya,Xb,p)