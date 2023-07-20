% Read the image
image = imread('2.jpg');

% Get the size of the image
[rows, columns, ~] = size(image);

% Calculate the center point
centerX = columns / 2;
centerY = rows / 2;

% Display the center point
disp(['Center point: (' num2str(centerX) ', ' num2str(centerY) ')']);

