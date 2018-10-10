% Time Domain

g1=input('Generator 1 : ');
g2=input('Generator 2 : ');
m=input('Message : ');

t1=conv(g1,m);
t2=conv(g2,m);

t1=mod(t1,2)
t2=mod(t2,2)

disp('Convolutional Encoder Output : ')

for i=1:size(t1,2)
   fprintf('%d%d ', t1(i),t2(i));
end

