% Homework 1
% Joshua Zapusek
% 9/10/2021

% Read image
I = imread('cameraman.tif');
% Part 2: Affine Transform: 
% Similar to class lecture define transform
% MATLAB likes 'affine2d' over imtransform - will use the former
tform = affine2d([0.3 0.5 0; 0.1 1.9 0; 0 1 1]);
% Do Affine Transform - linear default
J = imwarp(I, tform);
imwrite(J, 'Figure 4.tif');
% Plot
figure('Name', 'Original'), imshow(I), figure('Name', 'Figure 4'), imshow(J)
% Inverse Spacial Transform
invtform = invert(tform);
K = imwarp(J, invtform);
figure('Name', 'Figure 5'),imshow(K)
imwrite(J, 'Figure 5.tif');
