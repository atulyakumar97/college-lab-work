function y = modexp(a,x,n)

x_bin=de2bi(x);
y=1;
for i =1:length(x_bin)
    if x_bin(i)==1
        y=(mod(y*a,n));
    end
    
    if i~=length(x_bin)
        a=mod(a.^2,n);
    end
end
 