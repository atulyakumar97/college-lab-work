x=[1,2,3,4];
N=4;
i=sqrt(-1)
pi=3.14;
y=[0,0,0,0]
for k=1:N
for n=1:N
y(k)=y(k)+x(n)*round(exp(-(i*2*pi*(k-1)*(n-1))/N))
end
plot2d3(k,abs(y(k)))
end
disp(y)

a = gca();//get the current axes
a.data_bounds=[0,0;4,10];//[xmin,ymin,xmax,ymax]
title('Discrete Fourier Transform');
xlabel('Discrete Frequency');
ylabel('Absolut value of DFT');
