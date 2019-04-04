%%PHASE SCANNING
lambda=1;
d=0.5;
k=2*pi/lambda;
N=4;
t=[pi/4 pi/3 pi/6];
figure()
for i=1:3
    subplot(1,3,i)
    theta=0:0.01:2*pi;
    beta=-k*d*cos(t(i));
    psi=(k*d.*(cos(theta)))+beta;
    AF=sin(N*(psi/2))./(N*psi/2);
    polar(theta,abs(AF))
end

%%PATTERN MULTIPLICATION
t=0:0.001:2*pi;
beta=[0 -k*d k*d];
for i=1:3
    psi=(k*d.*(cos(t)))+beta(i);
    AF=sin((N*psi)/2)./(N*sin(psi/2));
    figure(i)
    subplot(1,3,1)
    title('af');
    polar(t,AF);
    ef=abs(cos(t));
    subplot(1,3,2)
    title('ef');
    polar(t,ef);
    tf=AF.*ef;
    subplot(1,3,3)
    title('tf');
    polar(t,tf);
end

