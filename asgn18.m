clc;
close all;

% Read the JPG image
jpgImage = imread('2.jpg');

% Convert to BMP format
imwrite(jpgImage, 'image2.bmp', 'bmp');
bmpImage = imread('image2.bmp');

% Convert to PNG format
imwrite(jpgImage, 'image2.png', 'png');
pngImage = imread('image2.png');

% Get the file information
jpgInfo = dir('2.jpg');
bmpInfo = dir('image2.bmp');
pngInfo = dir('image2.png');

% Extract the file sizes
jpgSize = jpgInfo.bytes;
bmpSize = bmpInfo.bytes;
pngSize = pngInfo.bytes;

% Display the images and compare sizes
figure;
subplot(2, 2, 1);
imshow(jpgImage);
title('JPG Image');

subplot(2, 2, 2);
imshow(bmpImage);
title('BMP Image');

subplot(2, 2, 3);
imshow(pngImage);
title('PNG Image');

% Display file sizes
fprintf('JPG Size: %.2f KB\n', jpgSize / 1024);
fprintf('BMP Size: %.2f KB\n', bmpSize / 1024);
fprintf('PNG Size: %.2f KB\n', pngSize / 1024);
