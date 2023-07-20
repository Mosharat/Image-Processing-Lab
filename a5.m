clc
a1=imread('2.jpg');
a11= imresize(a1,[600 600]);
subplot(4,2,1);imshow(a11)
title('image 1');
x = im2bw(a11);
subplot(4,2,2);imshow(x)
title('binary image 1');
a2=imread('3.jpg');
a22= imresize(a2,[600 600]);
subplot(4,2,3);imshow(a22)
title('image 2');
y=im2bw(a22);
subplot(4,2,4);imshow(y)
title('binary image 2');
c = and(x,y);
subplot(4,2,5);imshow(c)
title('AND image');
d= or(x,y);
subplot(4,2,6);imshow(d)
title('OR image');
e = xor(x,y);
subplot(4,2,7);imshow(e)
title('XOR image');

g= not(e);
subplot(4,2,8);imshow(g)
title('XNOR image');
