
//Delta
figure
for n=-5:5
    if n==0 then
        y=1
    else
        y=0
end
disp(y)
plot2d3(n,y)
end



//Ramp Function
figure
for n=0:5
    y=n

disp(y)
plot2d3(n,y)
end


//Unit Step
figure
for n=-5:5
    y=1
disp(y)
plot2d3(n,y)
end

//2^n * u(n-1)
figure
for n=[-3:3]
    if n<1 then
     y=0
     else 
    y=2^n
    end
disp(y)
plot2d3(n,y)
end

//2^n * u(n+1)
figure
for n=[-3:3]
    if n<-1 then
     y=0
     else 
    y=2^n
    end
disp(y)
plot2d3(n,y)
end

//2^n * u(-n+1)
figure
for n=[-3:3]
    if n<=1 then
     y=2^(n)
     else 
    y=0
    end
disp(y)
plot2d3(n,y)
end

//2^n * u(-n-1)
figure
for n=[-8:3]
    if n<=-1 then
     y=2^(n)
     else 
    y=0
    end
disp(y)
plot2d3(n,y)
end



//2^-n * u(-n-1)
figure
for n=[-5:3]
    if n<=-1 then
     y=2^(-n)
     else 
    y=0
    end
disp(y)
plot2d3(n,y)
end



