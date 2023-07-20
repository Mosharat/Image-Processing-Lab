% Read the input image
inputImage = imread('1.jpg');
grayImage = rgb2gray(inputImage);

% Apply Roberts operator
robertsHorizontal = edge(grayImage, 'Roberts');
robertsVertical = edge(grayImage, 'Roberts', 90);
robertsEdge = robertsHorizontal | robertsVertical;

% Apply Prewitt operator
prewittEdge = edge(grayImage, 'Prewitt');

% Apply Sobel operator
sobelEdge = edge(grayImage, 'Sobel');

% Display the original image and the edges detected using different operators
subplot(2, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(2, 2, 2);
imshow(robertsEdge);
title('Roberts Edge');

subplot(2, 2, 3);
imshow(prewittEdge);
title('Prewitt Edge');

subplot(2, 2, 4);
imshow(sobelEdge);
title('Sobel Edge');
