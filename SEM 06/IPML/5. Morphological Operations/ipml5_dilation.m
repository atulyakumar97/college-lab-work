y=imread('1.png');
y=rgb2gray(y);
resized=imresize(y,[256 256]);
bw=im2bw(resized);
SE=[1 1 1;1 1 1;1 1 1];
[m n]=size(bw);
[p q]=size(SE);
c=padarray(bw,[1 1]);
d=zeros(m,n);
for i=1:size(c,1)-3
    for j=1:size(c,2)-3
       if sum(sum(SE&c(i+1:i+p,j+1:j+q)))>=1
           d(i,j)=1;
       end
    end
end
dil=imdilate(bw,SE);
figure(2)
subplot(2,2,1)

imshow(d)
subplot(2,2,2)
imshow(dil)
