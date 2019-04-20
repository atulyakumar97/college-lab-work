clc
close all
clear all
temp=1
while temp==1;
clear all
t=[0 99;0 99;0 99;0 99;0 99;0 99];
c=[0 1 1 1 0 0;1 0 0 1 1 0;1 0 0 1 0 1;1 1 1 0 1 0;0 1 0 1 0 1;0 0 1 0 1 0];
p=[0 3 2 5 0 0 ;3 0 0 1 4 0;2 0 0 2 0 1;5 1 2 0 3 0;0 4 0 3 0 2;0 0 1 0 2 0];
s=[0 0 0 0 0 0 0 0 0 0 0 ];
path=0;
a=input('enter the source code : ');
z=a;
b=input('enter the destination code : ');
y=b;
for k=1:1:10
    if a==b
        break;
    else
        s(k+1)=a;
        for i=1:1:6
            fp(i)=p(a,i);
            fc(i)=c(a,i);
        end
        min=10;
        node=0;
        for i=1:1:6
            if s(k)==i
            else
                if fc(i)==1
                    
                    g=path+p(a,i)
                    if g<=t(i,2)
                        t(i,2)=g;
                        t(i,1)=a;
                    end
                    if fp(i)<=min
                     min=fp(i);
                     node=i;
                    end
                end
            end
        end
        path=t(node,2);
        a=node;
        t;
    end
     path;
end
ans=t(a,2);
 
disp('route destination to source');
disp(a)
for i=1:1:6
    if a==z
        break
    else
        a=t(a,1)
        disp(a);
    end
end
disp('cost of path is');
disp(ans);
 
temp=input('do you want to continue .. enter 1 for YES 0 for NO=');
 
end
 
