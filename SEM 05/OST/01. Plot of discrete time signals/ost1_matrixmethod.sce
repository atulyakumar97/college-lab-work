figure
n0=1
n1=-5
n2=5
n=n1:n2
x=[(n-n0)>=0]
y=(2.^n).*x
plot2d3(n,y)

figure
n0=-1
n1=-5
n2=5
n=n1:n2
x=[(n-n0)<=0]
y=(2.^-n).*x
plot2d3(n,y)

