x=imread('1.jpg');
subplot(2,2,1);
imshow(x);
subplot(2,2,2);
imhist(x);

y=histeq(x);
subplot(2,2,3);
imshow(y);
subplot(2,2,4);
imhist(y);



