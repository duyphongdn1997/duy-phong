close all;
I = imread('window dust.jpg');
T = rgb2ycbcr(I);
Y = T(:,:,1);
Cb = T(:,:,2);
Cr = T(:,:,3);
Y1 = histeq(Y);
I1 = ones(1440,2560,3,'uint8');
I1(:,:,1) = Y1;
I1(:,:,2) = Cb;
I1(:,:,3) = Cr;
I2 = ycbcr2rgb((I1));
figure, imshow(I);
figure, imshow(I2);


