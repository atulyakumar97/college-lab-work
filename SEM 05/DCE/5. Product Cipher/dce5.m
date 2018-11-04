close all
clear all
clc
img=imread('cameraman.tif');
figure
imshow(img)
title('Original Image')

key=65;
imshift = zeros(256,256);
k1=randperm(256);
k2=randperm(256);

for i=1:256
    for  j=1:256
        imshift(i,j)=mod((img(i,j)+key),256);
    end
end


figure
imshow(uint8(imshift))
title('Shifted Image')

encrypimg=zeros(256,256);
finalimg=zeros(256,256);

for i=1:256
    encrypimg(:,i)= img(:,k1(i));
end

figure
imshow(uint8(encrypimg));
title('Column Transformation')

for i=1:256  
    finalimg(i,:)= encrypimg(k2(i),:);
end

figure
imshow(uint8(finalimg));
title('Final Encrypted Image')

