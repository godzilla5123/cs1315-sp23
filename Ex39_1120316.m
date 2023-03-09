% CS-1315-01 SP23
% 1120316
% Example 3.9
clc; clear;

a = 1+1i;
b = 2-3i;
c = 8+2i;

d = [2-3i,4+8i,6-16i];
abs(a); abs(b); abs(c);
abs(d);

conj(d);
sqrt(a*conj(a));

% it's the same.