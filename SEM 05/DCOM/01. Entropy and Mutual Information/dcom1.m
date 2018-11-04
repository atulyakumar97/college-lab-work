clear all;
close all;
clc;
P = [0.30 0.05 0.00; 0.00 0.25 0.00; 0.00 0.15 0.05; 0.00 0.05 0.15]
z = sum(sum(P));
[m,n]=size(P);
Py=sum(P,1)
Px=sum(P,2)
Hx = sum(Px.*log2(1./Px))
Hy = sum(Py.*log2(1./Py))
Hxy=0;
Hy_x=0;
for i = 1:m
for j = 1:n
if P(i,j)~=0
Hxy=Hxy+P(i,j)*(log2(1/P(i,j)));
Hy_x=Hy_x+(P(i,j)*log2(1/(P(i,j)/Px(i))));
end
end
end
disp('H(XY) = ')
disp(Hxy)
disp('H(Y/X) = ')
disp(Hy_x)
disp('Mutual Information (MI) :')
disp(Hy-Hy_x)