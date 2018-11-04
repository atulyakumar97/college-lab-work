p=input('Enter first prime number : ');
q=input('Enter second prime number : ');

n = p * q;
phi = (p-1)*(q-1)

e=input('Select private key e (coprime to phi(n)) : ');

d=modexp(e,phi-1,phi);          % calculating public key for public key e

m=input('Enter message : ');

C=modexp(m,e,n);                %encrypted message

m1=modexp(C,d,n);               %decrypted message

disp('Decrypted message = ')
disp(m1)