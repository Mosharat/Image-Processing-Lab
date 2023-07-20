% Read the grayscale image
image = imread('D:\MATLAB\codes\2.jpg');
image = rgb2gray(image); % Convert to grayscale if necessary

% Get the intensity values of the pixels
pixel1 = double(image(y1, x1));
pixel2 = double(image(y2, x2));

% Calculate the Euclidean distance
distance = abs(pixel1 - pixel2);

% Display the Euclidean distance
fprintf('Euclidean Distance: %.2f\n', distance);
