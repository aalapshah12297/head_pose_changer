clear; close all;
sample_image = imread('../test_images/001.jpg');
load('../test_images/sample_landmarks.mat');
imshow(sample_image); hold on;
scatter(landmarks_001(:, 1), landmarks_001(:, 2), '.');
triangulation = [   1, 2, 3;
                    1, 3, 4;
                    1, 4, 5;
                    1, 5, 2;
                    2, 16, 6;
                    3, 2, 6;
                    3, 6, 7;
                    3, 7, 8;
                    3, 8, 9;
                    3, 9, 10;
                    3, 10, 11;
                    3, 11, 4;
                    4, 11, 12;
                    4, 12, 13;
                    4, 13, 5;
                    5, 13, 14;
                    5, 14, 15;
                    5, 15, 2;
                    2, 15, 16];
num_triangles = size(triangulation, 1);
triangles.P1 = landmarks_001(triangulation(:, 1), :);
triangles.P2 = landmarks_001(triangulation(:, 2), :);
triangles.P3 = landmarks_001(triangulation(:, 3), :);

for i = 1:num_triangles
    xy = [triangles.P1(i, :)', triangles.P2(i, :)', triangles.P3(i, :)', triangles.P1(i, :)'];
    p = plot(xy(1, :), xy(2, :));
    p.Color = [0, 145 234 32]/255;
    p.LineWidth = 2;
end