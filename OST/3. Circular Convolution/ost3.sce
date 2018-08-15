str = input("Enter a = ", "string")
a = evstr(strsplit(str, " "))
str1 = input("Enter b = ", "string")
b = evstr(strsplit(str1, " "))

n1=size(a,1)
n2=size(b,1)

if n1>n2 then
    while n1~=n2,
        b=cat(1,b,0)
        n2=n2+1;
    end
elseif n2>n1 then
    while n1~=n2,
        a=cat(1,a,0)
        n1=n1+1;
    end
end

N=size(a,1)
amatrix=zeros(N,N)

k=0
for i=1:N
    for j=1:N
        l=j+k
        if l<1
            l=l+N
        end
    amatrix(j,i)=a(l)
    end
    k=k-1
end

circularconvolution=amatrix*b
disp("Circular Convolution ")
disp(circularconvolution)

for i=1:N
plot2d3(i,circularconvolution(i))
end

p=gca();
p.data_bounds=[0,0;n2,20];
title('Circular Convolution');
xlabel('Discrete frequency');
ylabel('Absolute value of Circular Convolution');
