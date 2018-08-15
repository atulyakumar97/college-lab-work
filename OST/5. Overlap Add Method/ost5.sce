x=[3,-1,0,1,3,2,0,1,2,1];
disp(x,"X = ")
y=[1,1,1];
N=4;
M=length(y);
L=N-M+1;
b=length(x)

mat=matrix(x,L,b/2)'            
mat=[mat, zeros(b/2,L)]         //padding zeros
disp(mat,"mat")

y=[y,zeros(1)]  //padding zeros
disp("H = ")
disp(y);

H=fft(y);

k=0
padded=0

for i=1:size(mat,1)
    X=fft(mat(i,:)); 
    padded=padded+[zeros(1,k)   , ifft(X.*H),zeros(1,2*N-k)]
    k=k+2
end

disp(padded,"Overlap Add Output = ")
