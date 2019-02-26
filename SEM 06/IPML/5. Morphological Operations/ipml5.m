img = imread('rice.png');
figure(1)
subplot(3,2,1)
imshow(img)
title('Original Image')

bw=im2bw(img);
subplot(3,2,2)
imshow(bw)
title('Black and White Image')

SE=[1 1 1; 1 1 1; 1 1 1];
d=imdilate(bw,SE);
e=imerode(bw,SE);

subplot(3,2,3)
imshow(d)
title('Dilation using inbuilt fn')

subplot(3,2,4)
imshow(e)
title('Erosion using inbuilt fn')

%Dilation and Erosion using Code

for i=2:255
    for j=2:255
    xyz=bw(i-1: i+1, j-1:j+1).*SE;
    d_code(i,j)=max(max(xyz));
    
    e=isequal(xyz,SE);
    if e==0
       e_code(i,j)=0;
    else
        e_code(i,j)=1;
    end
    end
end

subplot(3,2,5)
imshow(d_code)
title('Dilation using Code')

subplot(3,2,6)
imshow(e_code)
title('Erosion using Code')

%Part 2

SE2 = strel('disk',1);
img2 = imread('noisy fingerprint.tif');
%img2=imresize(img2,[256 256]);

figure(2)
subplot(3,2,1)
imshow(img2);
title('Resized Image')

bw2=im2bw(img2);
subplot(3,2,2)
imshow(bw2)
title('Black and White Image')

d2=imdilate(bw2,SE2);
e2=imerode(bw2,SE2);

subplot(3,2,3)
imshow(d2)
title('Dilation using STREL SE')

subplot(3,2,4)
imshow(e2)
title('Erosion using STREL SE')

o = imopen(bw2,SE2);
subplot(3,2,5)
imshow(o)
title('Opening using Matlab fn')

c = imclose(bw2,SE2);
subplot(3,2,6)
imshow(c)
title('Closing using Matlab fn')
