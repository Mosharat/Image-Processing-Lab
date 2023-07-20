% Read the RGB image
rgbImage = imread('3.jpg');

% Convert RGB image to JPG format
imwrite(rgbImage, 'jpg_image18.jpg', 'jpg');
jpgSize = dir('jpg_image18.jpg').bytes;

% Convert RGB image to BMP format
imwrite(rgbImage, 'bmp_image18.bmp', 'bmp');
bmpSize = dir('bmp_image18.bmp').bytes;

% Convert RGB image to PNG format
imwrite(rgbImage, 'png_image18.png', 'png');
pngSize = dir('png_image18.png').bytes;

% Display the sizes
disp(['Jpg Size: ' num2str(jpgSize) ' bytes']);
disp(['Bmp Size: ' num2str(bmpSize) ' bytes']);
disp(['Png Size: ' num2str(pngSize) ' bytes']);
