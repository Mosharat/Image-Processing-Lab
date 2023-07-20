clc
clear all
a=imread('1.jpg');
x=a;
subplot(3,2,1)
imshow(a);
title('RGB image');

a(:,:,1);
a(:,:,2)=0;
a(:,:,3)=0;
subplot(3,2,2);
imshow(a);
title('Red image');

a=x;
a(:,:,1)=0;
a(:,:,2);
a(:,:,3)=0;subplot(3,2,3);
imshow(a);
title('Green image');

a=x;
a(:,:,1)=0;
a(:,:,2)=0;
a(:,:,3);
subplot(3,2,4);
imshow(a);
title('Blue image');

a=x;
W=(a(:,:,1)+a(:,:,2)+a(:,:,3));
subplot(3,2,5);
imshow(W);
title('Merged image');