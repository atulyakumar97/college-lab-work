close all
clear all
clc
symbols=[1:6];
prob=[0.26 0.2 0.2 0.15 0.1 0.09];
[dict,avglen] = huffmandict(symbols,prob)
img1=imread('coins.png');
figure
imshow(img1)
title('coins.png')
histogram1=imhist(img1);
figure
plot(histogram1)
title('Histogram of coins.png')
xlabel('Frequency of Intensity')
ylabel('Intensity Level')
pixels1=numel(img1)
prob1=histogram1/pixels1;
symbols1=[1:256];
[dict1,avglen1] = huffmandict(symbols1,prob1)
img2=imread('cameraman.tif');
figure
imshow(img2)
title('cameraman.tif')
histogram2=imhist(img2);
figure
plot(histogram2)
title('Histogram of cameraman.tif')
xlabel('Frequency of Intensity')
ylabel('Intensity Level')
pixels2=numel(img2)
prob2=histogram2/pixels2;
symbols2=[1:256];
[dict2,avglen2] = huffmandict(symbols2,prob2)
img3=imread('forest.tif');
figure
imshow(img3)
title('forest.tif')
histogram3=imhist(img3);
figure
plot(histogram3)
title('Histogram of forest.tif')
xlabel('Frequency of Intensity')
ylabel('Intensity Level')
pixels3=numel(img3);
prob3=histogram3/pixels3;
symbols3=[1:256];
[dict3,avglen3] = huffmandict(symbols3,prob3)
