close all
clear all
clc

image=imread('coins.png');
resized=imresize(image,[256,256]);
figure(1)
imshow(resized);
title('Resized Image');

%Image Negative
for i=1:256
    for j=1:256
        negative(i,j)=255-resized(i,j);
    end
end

figure(2)
subplot(3,2,1)
imshow(negative);
title('Negative Image');
subplot(3,2,2)
stem(resized(:),negative(:));
xlabel('Input Image')
ylabel('Output Image')

%Thresholding
for i=1:256
    for j=1:256
        if resized(i,j)>100
            thres(i,j)=255;
        else
            thres(i,j)=0;
        end
    end
end

subplot(3,2,3)
imshow(thres);
title('Thresholded Image');
subplot(3,2,4)
stem(resized(:),thres(:));
xlabel('Input Image')
ylabel('Output Image')


%Grey Level Slicing
for i=1:256
    for j=1:256
        if resized(i,j)>85 && resized(i,j)< 171 %with background
            graylvl(i,j)=255;
        else
            graylvl(i,j)=resized(i,j);
        end
        
        if resized(i,j)>85 && resized(i,j)< 171 %without background
            graylvl_wbg(i,j)=255;
        else
            graylvl_wbg(i,j)=0;
        end
    end
end

subplot(3,2,5)
imshow(graylvl);
title('Gray Level Slicing with background');
subplot(3,2,6)
stem(resized(:),graylvl(:));
xlabel('Input Image')
ylabel('Output Image')


figure(3)
subplot(3,2,1)
imshow(graylvl_wbg);
title('Gray Level Slicing without background');
subplot(3,2,2)
stem(resized(:),graylvl_wbg(:));
xlabel('Input Image')
ylabel('Output Image')


%Log Transform
for i=1:256
    for j=1:256
     logt(i,j)=150*log(1+im2double(resized(i,j))); 
    end
end

subplot(3,2,3)
imshow(uint8(logt));
title('Log Transform');
subplot(3,2,4)
stem(resized(:),logt(:));
xlabel('Input Image')
ylabel('Output Image')

%Power Law Transform
gamma=5; %gamma = 0.2, 1 ,10
for i=1:256
    for j=1:256
     powlawt(i,j)=150*power(im2double(resized(i,j)),gamma); 
    end
end

subplot(3,2,5)
imshow(uint8(powlawt));
title('Power Law Transform');
subplot(3,2,6)
stem(resized(:),powlawt(:));
xlabel('Input Image')
ylabel('Output Image')

