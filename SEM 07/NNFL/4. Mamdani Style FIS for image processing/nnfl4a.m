clc
clear all
close all

img=im2double(rgb2gray(imread('peppers.png')));
img = imresize(img,[256 256]);
a=max(max(img));
b=min(min(img));
img_norm=(img-b)/(a-b);
gx=[-1 1];
gy=gx';
Ix=conv2(img_norm,gx);
Iy=conv2(img_norm,gy);

fis1=readfis('nnfl4a');
getfis(fis1);
showrule(fis1);

for i=1:256
    for j=1:256
        Ieval(i,j)=evalfis([Ix(i,j); Iy(i,j)]',fis1);
    end
end

figure(1)
subplot(2,2,1)
imshow(img)
title('Original Image')

subplot(2,2,2)
imshow(Ix)
title('Gradient-X Image')

subplot(2,2,3)
imshow(Iy)
title('Gradient-Y Image')

subplot(2,2,4)
imshow(Ieval)
title('Edge-Detected Image')