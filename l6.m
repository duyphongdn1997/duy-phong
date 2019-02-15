x = [1 1 1 1 1];
h = [1 -1];
y = conv(x,h);
stem(y);
close all;
N = 100;
n = 0 : N - 1;
x = sin (0.1 *pi*n);
x1 = x + 0.05*randn(1,N);
h = 1/4*[1 2 1];
y = conv(x1,h,'same');
figure
subplot(311), plot(x);
subplot(312), plot(x1);
subplot(313), plot(y);

