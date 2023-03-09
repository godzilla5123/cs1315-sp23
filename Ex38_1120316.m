% CS-1315-01 SP23
% 1120316
% Example 3.8
clc; clear;

random_1 = rand(3,3);
random_2 = randn(3,3);
random_3 = rand(100,5);

rand_max = max(random_3);
rand_std = std(random_3);
rand_var = rand_std.^2; %def of the variance. using var() does the same
rand_mean = mean(random_3);