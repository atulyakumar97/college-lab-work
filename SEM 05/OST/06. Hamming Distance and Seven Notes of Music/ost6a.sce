str=input('Enter first number : ','string');
A=evstr(strsplit(str,''))
str1=input('Enter second number : ','string');
B=evstr(strsplit(str1,''))

if length(A)==length(B) then
    
count=0;

for i=1:length(A)
    if A(i)~=B(i)
        count=count+1
    end
end

disp(msprintf('%s%d',"Hamming Distance = ", count))

else
    disp('Please input same number of bits')    
end



