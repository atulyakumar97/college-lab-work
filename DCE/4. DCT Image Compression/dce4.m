close all
clear all
clc
img=imread('cameraman.tif');
dimg=img-128;
outputimg=zeros(256,256);
for i=1:8:256
for j=1:8:256
block=dimg(i:i+7,j:j+7); %formation of 8x8 block
dctoutput=dct2(block);
threshold=max(max(dctoutput))/100;
for k=1:8 %Operation on 8x8 block
for l=1:8
if dctoutput(k,l)<threshold
dctoutput(k,l)=0;
end
end
end
outputimg(i:i+7,j:j+7)=idct2(dctoutput);
end
end
outputimg=outputimg+128;
figure
imshow(img)
figure
imshow(dimg)
figure
imshow(uint8(outputimg))