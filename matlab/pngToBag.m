% David Devant 2019 - pngToBag
close all; clc; more off; clear;
addpath('ressources/');

% Constant
baseVGA = 524288;
VGAWidth = 640;
VGAHeight = 480;
maxRAMSize = 8192;
inputPNG = 'background.png';
outputBAG = 'output.bag';

% Load img
img = double(imread(inputPNG)) / 255;
img = rgb2gray(img);

% Get sizes
[h, w] = size(img);

if ((h ~= VGAHeight) || (w ~= VGAWidth))
    fprintf('Size of the image does not match with VGA: %ux%u\n', VGAWidth, VGAHeight);
    return;
end;

notBlackPixel = 0;

fileID = fopen(outputBAG, 'w');
for y=1:h
    for x=1:w
        if (img(y,x) > 0)
            value = ceil(img(y,x) * 15); % 15 is the maximum value for the VGA peripheral
            address = baseVGA + y * VGAWidth + x;
            fprintf(fileID,'ecrire_a(%u, %u)\n', value, address);

            notBlackPixel = notBlackPixel + 1;
        end;
    end;
end;
fclose(fileID);

fprintf('Conversion done : %s -> %s\n', inputPNG, outputBAG);

% 15: Variables of the gray scale (1-15), 3: 2 Instruction + 1 variable)
ressourceUsage = (15 + 3 * notBlackPixel) / maxRAMSize * 100;
fprintf('Ressource usage : %0.2f%%\n', ressourceUsage);

if (ressourceUsage > 100.0)
    fprintf('RAM SIZE IS NOT ENOUGHT\n');
end;