% CS-1315-01 SP23
% 1120316
% Example 3.11
clc; clear;
data = readmatrix("thermo_scores.dat");
student_10 = data(10,:);
test_1 = data(:,2);
std_t1 = std(test_1);
var_t1 = var(test_1);
newData = data(:,2:end);
scores = [];
for ind = 1:20
    newData(ind,:) = data(ind,2:4);
    scores = [scores, (sum(data(ind,2:4))/3)];
end
newTable = [data(:,1),newData,scores'];
newTable = sortrows(newTable,4);
disp(table(newTable,'VariableNames',"Student #, Exam 1, Exam 2, Exam 3, Score"));