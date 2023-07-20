a1=imread('2.jpg');
subplot(2,2,1);
imshow(a1)
a11= imresize(a1,[150,200]);
subplot(2,2,2);
imshow(a11)
title('Resized image 1');

a2=imread('3.jpg');
subplot(2,2,3);
imshow(a2)
a22= imresize(a2,[600,600]);
subplot(2,2,4);
imshow(a22)
title('Resized image 2');