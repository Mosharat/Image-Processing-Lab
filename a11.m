% Read the image
image = imread('3.jpg');

% Define the coordinates of the first pixel
x1 = 100; 
y1 = 200; 
% Define the coordinates of the second pixel
x2 = 150; 
y2 = 250; 

% Get the RGB values of the first pixel
rgb1 = double(image(y1, x1, :));

% Get the RGB values of the second pixel
rgb2 = double(image(y2, x2, :));

% Calculate the Euclidean distance between the two pixels
distance = norm(rgb1 - rgb2);

% Display the distance
disp(['Euclidean distance: ' num2str(distance)]);
