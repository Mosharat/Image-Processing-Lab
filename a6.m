a1=imread('3.jpg');
subplot(2,2,1);imshow(a1)
title('Input image');
a11= imresize(a1,[50,50]);

I1= imresize(a11, [1400,2000],'nearest');
subplot(2,2,2);
imshow(I1)
title('Nearest Interpolation');
I2= imresize(a11, [1400,2000],'bilinear');
subplot(2,2,3);
imshow(I2)
title('Bi-Linear Interpolation');
I3= imresize(a11, [1400,2000],'bicubic');
subplot(2,2,4);
imshow(I3)
title('Bi-Cubic Interpolation');