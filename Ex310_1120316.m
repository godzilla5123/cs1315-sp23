% CS-1315-01 SP23
% 1120316
% Example 3.10
clc; clear;

A = 6;
angFQ = 0.5;
t = 0:15;
x = A * cos(t.*angFQ);

tab = table(t',x','VariableNames',{'Time (seconds)','Displacement(rad)'});
disp(tab);