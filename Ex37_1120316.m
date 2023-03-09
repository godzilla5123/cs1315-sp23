% CS-1315-01 SP23
% 1120316
% Example 3.7
clc; clear;
x = [4 90 85 75;2 55 65 75; 3 78 82 79; 1 84 92 93];
sz = size(x);
b = sort(x,2);
b_prime = sort(x,2,'descend');
b_rows = sortrows(x);
b_rows_prime = sortrows(x,3);
