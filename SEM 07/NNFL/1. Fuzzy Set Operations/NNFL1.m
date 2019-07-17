clc
close all

a=input('Enter Fuzzy set A in []: ');
b=input('Enter Fuzzy set B in []: ');
n=length(a);

choice=input('\nSelect a operation: \n1. Compliment \n2. Union \n3. Intersection \n4.De Morgans Law\n');

switch choice
    case 1
        i=1:n;
        ca(i)=1-a(i);
        cb(i)=1-b(i);
        disp('Compliment of set A : ');
        disp(ca)
        disp('Compliment of set B : ');
        disp(cb)
        
    case 2
        i=1:n;
        aub(i)=max(a(i),b(i));
        disp('Union of set A and set B : ');
        disp(aub)
        
    case 3
        i=1:n;
        anb(i)=min(a(i),b(i));
        disp('Intersection of set A and set B : ');
        disp(anb)
        
    case 4
        i=1:n;
        ca(i)=1-a(i);
        cb(i)=1-b(i);
        aub(i)=max(a(i),b(i));
        anb(i)=min(a(i),b(i));
        
        disp('De Morgans Law : Compliment of Union of A and B = Intersection of Compliment of A and Compliment of B');
        i=1:n;
        caub(i)=1-aub(i);
        cancb(i)=min(ca(i),cb(i));
        disp('Compliment of Union of A and B')
        disp(caub)
        disp('Intersection of Compliment of A and Compliment of B')
        disp(cancb)
        if (caub==cancb)
            disp('De Morgans Law is proved...')
        end        
end



