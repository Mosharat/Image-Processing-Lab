% Read the color image
colorImage = imread('1.jpg');

% Convert the color image to grayscale
grayImage = rgb2gray(colorImage);

% Adjust the intensity level
adjustedImage = imadjust(grayImage, [0.2 0.8], []);

% Display the original color image, grayscale image, and adjusted image
subplot(1, 3, 1);
imshow(colorImage);
title('Color Image');

subplot(1, 3, 2);
imshow(grayImage);
title('Grayscale Image');

subplot(1, 3, 3);
imshow(adjustedImage);
title('Adjusted Image');

% Save the adjusted image
imwrite(adjustedImage, 'output_image.jpg');
