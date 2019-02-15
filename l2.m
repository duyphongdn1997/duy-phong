close all;
I = zeros(300,400, 3);
I(:,:,:) = 255;
I(1:300,175:225,2) = 0;
I(125:175,1:400,2) = 0;
I(1:300,175:225,3) = 0;
I(125:175,1:400,3) = 0;
figure,imshow(I);
X = zeros(300,400,3);
X(:,:,:) = 255;
X(1:300,1:133,2:3) = 0;
X(1:300,266:400,1:2) = 0;
X(1:300,266:400,3) = 255;
figure, imshow(X);
Y = imread('beato.jpg');
%for i = 1:200
%    for j = 1:150
%           Z(i,j,e) = Y(i,j,e);
%        end
%    end
%end
%figure,imshow(Z);
I1 = Y(1:2:end,1:2:end,:);
figure, imshow(I1);
I2 = Y(1:4:end,1:4:end,:);
figure, imshow(I2);
I3 = imresize(I2,[200 150]);