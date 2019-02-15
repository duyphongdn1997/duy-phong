close all;
x = [9 9 8 10 10 12;
     9 9 10 12 14 14;
     10 10 12 14 15 15;
     10 13 13 14 14 14;
     13 14 14 16 16 16;
     14 14 14 14 14 14];
h = 1/8*[0 1 0; 1 4 1; 0 1 0];
y = conv2 (x,h,'same');
stem(y);