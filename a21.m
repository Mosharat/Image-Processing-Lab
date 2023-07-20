% Read the binary image
binaryImage = imread('3.jpg');
binaryImage = imbinarize(binaryImage); % Convert to binary if necessary

% Perform Hadamard transformation
hadamardTransform = hadamard(size(binaryImage, 1)) * double(binaryImage) * hadamard(size(binaryImage, 2));

% Perform Walsh transformation
walshTransform = fwht(double(binaryImage));

% Display the original binary image, Hadamard transformation, and Walsh transformation
subplot(1, 3, 1);
imshow(binaryImage);
title('Binary Image');

subplot(1, 3, 2);
imshow(hadamardTransform, []);
title('Hadamard Transform');

subplot(1, 3, 3);
imshow(walshTransform, []);
title('Walsh Transform');

% Save the Hadamard and Walsh transformations as images
imwrite(hadamardTransform, 'hadamard_transform.jpg');
imwrite(walshTransform, 'walsh_transform.jpg');
