% CS-1315-01 SP23
% 1120316
% Example 3.6
clear; clc;
data = readmatrix("thermocouple.dat");

[val1,ind1] = max(data(:,1));
disp("Thermocouple 1 has a max of " + val1 + " at row " + ind1);
[val2,ind2] = max(data(:,2));
disp("Thermocouple 2 has a max of " + val2 + " at row " + ind2);
[val3,ind3] = max(data(:,3));
disp("Thermocouple 3 has a max of " + val3 + " at row " + ind3);

maxValues = [val1,val2,val3];
[maxval,maxthermo] = max(maxValues);
disp("Thermocouple " + maxthermo + " has the highest reading of " + maxval);
%or
[maxVal,thermoCount] = max(data);
disp("Max value of all three thermocouples are " + max(maxVal) + " from thermocouple reading " + max(thermoCount));
disp("Min values of all three thermocouples:");
disp(min(data));
disp("Mean values of each thermocouple:");
disp(mean(data));
disp("Median values of all three thermocouples:");
disp(median(data));
disp("Mean values of all three thermocouples:");
disp(mean(mean(data)));