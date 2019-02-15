close all;
I = imread('winter girl.jpg');
m = size(I,1); n = size(I,2);
mR= zeros(m,n);
mR(1:2:end,1:2:end) = 1;
Y = double(I);
Y(:,:,1) = Y(:,:,1).*mR;
mB=zeros(m,n);
mB(2:2:end,2:2:end) =1 ;
Y(:,:,3) = Y(:,:,3).*mB;
mG = 1 - mR -mB;
Y(:,:,2) = Y(:,:,2).*mG; 
figure
subplot(121), imshow(uint8(Y));
R = Y(:,:,1);
G = Y(:,:,2);
B = Y(:,:,3);
Fr = 1/4*[1 2 1; 2 4 2; 1 2 1];
Fg = 1/4*[0 1 0; 1 4 1; 0 1 0];
Fb = 1/4*[1 2 1; 2 4 2; 1 2 1];
R1 = conv2(R,Fr,'same');
G1 = conv2(G,Fg,'same');
B1 = conv2(B,Fb,'same');
I3(:,:,1) = R1;
I3(:,:,2) = G1;
I3(:,:,3) = B1;
subplot(122), imshow(uint8(I3));
I = double(I);
I3 = double(I3);
MSE = double(MSE);
for k = 1: 3
    for i = 1: 1894
        for j = 1: 3000
            MSE = MSE + (I(i,j,k) - I3(i,j,k))*(I(i,j,k) - I3(i,j,k));
        end
    end
end
MSE = MSE * 1/(1894*3000*3)
PSNR = 10*log10((255*255)/MSE)