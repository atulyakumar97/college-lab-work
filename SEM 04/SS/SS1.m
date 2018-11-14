t1=0:1:100;
y1=ones(1,length(t1));
subplot(3,4,1);
plot(t1,y1);
title('continous unit step function');
xlabel('time');
ylabel('amplitude');

t2=0:4:100;
y2=ones(1,length(t2));
subplot(3,4,2);
stem(t2,y2);
title('discrete unit step function');
xlabel('time');
ylabel('amplitude');

t3=0:1:100;
y3=t3;
subplot(3,4,3);
plot(t3,y3);
title('continous unit ramp function');
xlabel('time');
ylabel('amplitude');

t4=0:4:100;
y4=t4;
subplot(3,4,4);
stem(t4,y4);
title('discrete unit ramp function');
xlabel('time');
ylabel('amplitude');

t5=0:0.5:20;
y5=sin(t5);
subplot(3,4,5);
plot(t5,y5);
title('continous sine function');
xlabel('time');
ylabel('amplitude');

t6=0:0.2:20;
y6=sin(t6);
subplot(3,4,6);
stem(t6,y6);
title('discrete sine function');
xlabel('time');
ylabel('amplitude');

t7=0:0.5:20;
y7=cos(t7);
subplot(3,4,7);
plot(t7,y7);
title('continous cosine function');
xlabel('time');
ylabel('amplitude');

t8=0:0.2 :20;
y8=cos(t8);
subplot(3,4,8);
stem(t8,y8);
title('discrete cosine function');
xlabel('time');
ylabel('amplitude');

t9=-4:0.2:4;
y9=sinc(t9);
subplot(3,4,9);
plot(t9,y9);
title('continous sinc function');
xlabel('time');
ylabel('amplitude');

t10=-4:0.2:4;
y10=sinc(t10);
subplot(3,4,10);
stem(t10,y10);
title('discrete sinc function');
xlabel('time');
ylabel('amplitude');

t11=0;
y11=1;
subplot(3,4,11);
plot(t11,y11);
line([0,0],[0,1]);
title('continous unit impulse function');
xlabel('time');
ylabel('amplitude');

t12=0;
y12=1;
subplot(3,4,12);
stem(t12,y12);
title('discrete unit impulse function');
xlabel('time');
ylabel('amplitude');