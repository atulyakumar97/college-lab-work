clear all
close all
clc
 
img1 = imread('1','bmp');
img1 = rgb2gray(img1);
ent1 = entropy(img1)
subplot(1,2,1)
imshow(img1)
title('Original Image')
 
[x,y]=size(img1);
for i = 1:x 
    for j = 1:y-1 
        img2(i,j)=img1(i,j+1)-img1(i,j);
    end
end
 
ent2=entropy(img2)
diffent=ent2-ent1
subplot(1,2,2)
imshow(img2)
title('Difference Image')
