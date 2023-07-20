% Convert RGB image to YIQ
rgbImage = imread('1.jpg');
yiqImage = rgb2ntsc(rgbImage);

% Convert YIQ image to RGB
reconstructedRgbImage = ntsc2rgb(yiqImage);

% Display the images
subplot(1, 3, 1);
imshow(rgbImage);
title('Original RGB Image');

subplot(1, 3, 2);
imshow(yiqImage);
title('Yiq Image');

subplot(1, 3, 3);
imshow(reconstructedRgbImage);
title('Reconstructed RGB Image');

