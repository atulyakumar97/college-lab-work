clc;
clear all;

n=input('Enter rows : ');
k=input('Enter cols : ');

str = inputdlg('Enter values column wise');
numbers = str2num(str{1});
G = reshape(numbers,n,k);



I = G(:,1:4);
P = G(:,5:7);

M = [1 0 1 1];
C = M*P;
for i = 1:3
    C(i) = mod(C(i),2);
end
A = cat(2,M,C);

r = A(:,:);
z = randi(4)
r(z) = r(z)+1;
r(z) = mod(r(z),2);
disp('error message: ');
disp(r);
H = gen2par(G);
S = r*H';
for i = 1:3
    S(i) = mod(S(i),2);
end

temp = H';
for i = 1:n
    s = 0;
    for j = 1:3
        if S(j) == temp(i,j)
            s= s+1;
        end
        if s == 3;
            p = i;
            r(i) = r(i)+1;
            break;
        end
    end
end

for i = 1:3
    r(i) = mod(r(i),2);
end
disp('error in bit number: ');
disp(p);
disp('corrected message: ');
disp(r);