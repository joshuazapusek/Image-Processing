% Homework 1
% Joshua Zapusek
% 9/10/2021

% Part 1: Bicubic Interpolation:
I = imread('cameraman.tif');
figure('Name', 'Original'), imshow(I)
% Define trasnform parameters (CW)
theta = 33.5;
% transformation Matrix 
S = [2.4 0 0; 0 0.714 0; 0 0 1];
T = [1 0 0; 0 1 0; 0 0 1];
R = [cosd(theta) sind(theta) 0; -sind(theta) cosd(theta) 0; 0 0 1];
% Total
M = R * T * S;
% Define and do transform
tform = affine2d(M);
[J, X] = imwarp(I, tform, 'cubic');
figure('Name', 'Cubic'), imshow(J)
% Invert the Transform
% M1 = inv(M);
% tform1 = affine2d(M1);
% [K, Y] = imwarp(J, tform1, 'cubic');
invtform = invert(tform);
K = imwarp(J, invtform, 'cubic');
figure('Name', 'Cubic Invert'), imshow(K)
