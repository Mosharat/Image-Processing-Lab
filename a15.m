a=imread('2.jpg');
subplot(1,3,1);
imshow(a);
title('Original image');

y=rgb2ycbcr(a);
subplot(1,3,2);
imshow(y);
title('RGB to YCbCr');

b=ycbcr2rgb(y);
subplot(1,3,3);
imshow(b);
title('YCbCr to RGB');


