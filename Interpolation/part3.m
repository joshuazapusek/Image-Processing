% Homework 1
% Joshua Zapusek
% 9/10/2021

% Part 3: Hstogram Equalization
I = imread('cameraman.tif');
% First check image histogram
figure('Name', 'Original Image'), imshow(I), figure('Name', 'Original Histogram'), imhist(I, 64)
% Do Equalization
E1 = histeq(I);
figure('Name', 'Equalized Image'), imshow(E1), figure('Name', 'Equalized Histogram'), imhist(E1, 64)
% Second Equalization
E2 = histeq(E1);
figure('Name', 'Second Equalized Image'), imshow(E2), figure('Name', 'Second Equalized Histogram'), imhist(E2, 64)
% We can see the first and second histograms being equal 