% Specify the directory path
directoryPath = 'D:\MATLAB\codes';

% Get a list of all JPEG files in the directory
jpegFiles = dir(fullfile(directoryPath, '*.jpg'));

% Convert each JPEG image to PNG
for i = 1:length(jpegFiles)
    % Read the JPEG image
    jpegFilename = fullfile(directoryPath, jpegFiles(i).name);
    rgbImage = imread(jpegFilename);
    
    % Convert JPEG image to PNG
    [~, baseFilename, ~] = fileparts(jpegFiles(i).name);
    pngFilename = fullfile(directoryPath, [baseFilename '.png']);
    subplot(1,3,i);
    imshow(pngFilename);
    title(pngFilename);
    imwrite(rgbImage, pngFilename, 'png');
    
    
    % Display progress
    disp(['Converted ' jpegFiles(i).name ' to ' baseFilename '.png']);
end
