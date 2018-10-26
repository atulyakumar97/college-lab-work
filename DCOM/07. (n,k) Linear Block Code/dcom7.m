clc
close all
clear all
 
G=double(input('Enter G : '))
[m,n]=size(G);
M=input('Enter M : ')
 
I=G(:,1:4)
P=G(:,5:7)
 
disp('Transmitted Codeword: ')
C=[M,mod(M*P,2)]
 
%GENERATING ERROR
r=C;
z=randi(7);
r(z)=mod(r(z)+1,2);

disp('Received Codeword:')
disp(r)
%====================
 

H=gen2par(G)
Ht=H'
S=mod(r*Ht,2)
[l,k]=size(S);
 

for i=1:m
    count=0;
    for j=1:k
        if S(j)==Ht(i,j)
            count=count+1;
            if count==k
                break 
            end
            break
        end
    end
end
 
disp('Error in bit ')
 disp(i);
  r(i)=mod(r(i)+1,2);

disp('Corrected Codeword :')
disp(r)