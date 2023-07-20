
y=imread('1.jpg');
subplot(3,2,1);
imshow(y);
title('Original image');

subplot(3,2,2);
fim=fliplr(y);
imshow(fim);
title('Flip image');

x=imread('2.jpg');
subplot(3,2,3);
imshow(x);
title('Original image');

cim=imcomplement(x);
subplot(3,2,4);
imshow(cim);
title('Complemented image');

subplot(3,2,5);
z=imread('3.jpg');
imshow(z);
title('Original image');

subplot(3,2,6);
z1=rgb2gray(z);
plot(z1(160,:,:));
plot(z1(160,:,:));
title('Scan line');