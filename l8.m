close all;
I = imread('winter girl.jpg');
I = rgb2gray(I);
I = double(I);
noise = 50 * randn(size(I));
I1 = I + noise;
figure
subplot(121), imshow(I,[]);
subplot(122), imshow(I1,[]);
h = 0.25*[0 5 0; 1 4 1;0 5 0];
y = conv2(I1,h,'same');
figure
subplot(121), imshow(I1,[]);
subplot(122), imshow(y,[]);