% Read the JPEG image
jpegImage = imread('2.jpg');
subplot(3,2,1)
imshow(jpegImage);
title('jpeg image');

% Convert JPEG image to BMP format
imwrite(jpegImage, 'bmp_image.bmp', 'bmp');
BmpImage = imread('bmp_image.bmp');
subplot(3,2,2)
imshow(BmpImage);
title('Bmp image');


% Convert JPEG image to PNG format
imwrite(jpegImage, 'png_image.png', 'png');
PngImage = imread('png_image.png');
subplot(3,2,3)
imshow(PngImage);
title('Png image');


% Convert JPEG image to WMF format
fig = figure;
image(jpegImage);
axis off;
print(fig, 'wmf_image.wmf', '-dmeta');


