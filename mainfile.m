clear all
close all
clc
%% Read the images, assuming images to be of same size
A=imread('images2\ghost rider.jpg');
B=imread('images2\nicholas cage.jpg');
height=size(A,1);
width=size(A,2);

%% Convert images to grayscale
imgA=rgb2gray(A);
imgB=rgb2gray(B);

%% Create mask
partition=floor(width/2);
mask=ones(height,width);
mask(:,1:partition)=0*mask(:,1:partition);
% figure, imshow(uint8(mask*255));

%% Create gaussian pyramids for both the images and the mask
levels=floor(log2(min([width, height])));
sigma=2;
hsize=3*sigma+1;
sigmaMask=10;
hsizeMask=3*sigmaMask+1;
gaussPyrA=gaussianPyramid(imgA,levels,sigma,hsize)
gaussPyrB=gaussianPyramid(imgB,levels,sigma,hsize)
gaussPyrMask=gaussianPyramid(mask,levels,sigmaMask,hsizeMask)
% for i=1:levels
%     figure,imshow(uint8(gaussPyrMask{i,1}*255));
% end

%% Create Laplacian pyramids from both the images 
laplacePyrA=laplacianPyramid(gaussPyrA);
% showPyramid(laplacePyrA);
laplacePyrB=laplacianPyramid(gaussPyrB);

%% Blend laplacian pyramid
blendedPyr=blendPyramid(laplacePyrA,laplacePyrB,gaussPyrMask);

%% Reconstruct image from blended pyramid
blendedImg=collapsePyramid(blendedPyr);
imshow(blendedImg);
imgClubbed=[imgA(:,1:partition), imgB(:,partition+1:end)];
figure, imshow(imgClubbed);
