% Specify the directory path
directoryPath = 'D:\MATLAB\codes';

% Get a list of all JPEG files in the directory
jpegFiles = dir(fullfile(directoryPath, '*.jpg'));

% Process each JPEG image
for i = 1:length(jpegFiles)
    % Read the JPEG image
    jpegFilename = fullfile(directoryPath, jpegFiles(i).name);
    rgbImage = imread(jpegFilename);
    
    % Convert RGB image to grayscale
    grayImage = rgb2gray(rgbImage);
    
    % Apply DCT to the grayscale image
    dctImage = dct2(grayImage);
    
    % Display the DCT image
    subplot(1,3,i);
    imshow(log(abs(dctImage) + 1), []);
    title(jpegFiles(i).name);
end
