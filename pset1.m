% CS-1315-01 SP23
% 1120316
% Exam p-set 1
clc; clear;
%% code executions
% part 1
exponent = input("e to what power? "); %should be simple
n = input("calculate to what degree? "); % see above
disp(eInfSer(exponent,n)); % function listed on problem 1
disp(exp(exponent)); % MATLAB built response 

%part 2
heigh = input("Enter in height: ");
vel = input("Enter in velocity: ");
disp(projectileCalculations(heigh, vel));

% part 3
matrixEx = input("insert matrix of [a b; c d]");
disp(squareMatrix(matrixEx));
Q = matrixEx^2;
disp(Q);
if Q == squareMatrix(matrixEx)
    disp("matrixes are equal")
end

%part 4
disp(projEQ());
%% prob 1, with annotations
function output = eInfSer(x,n) % function outputVar = functionName(input1, input2)
output = 0; % declares var
    for x_n= 0:1:n % for loop, goes from 0 to n with a step of 1
        output = output + ((x^(x_n))/factorial(x_n)); % output += x^n/n! 
    end
end
%% prob 2, with annotations
function tableOut = projectileCalculations(height, velocity)
t = 0:2:30; % vector
h = ((t.^2)*-4.9)+t.*velocity + height; %quad eq
tableOut = table(t',h','VariableNames',["Time","Height"]);
end
%% prob 3, with annotations
function mPrime = squareMatrix(M)
R1 = M(1,:); %row one
R2 = M(2,:);
C1 = M(:,1); %column one
C2 = M(:,2);
P1 = dot(R1,C1'); %MATLAB built in function for dot products
P2 = dot(R1,C2'); % see others
P3 = dot(R2,C1');
P4 = dot(R2,C2');
mPrime = [P1 P2; P3 P4]; %construction of new table
end
%% prob 4, with annotations
function out = projEQ()
 v = 10:2:20;
 theta = 50:10:100;
 h = ((v.^2).*(sind(theta).^2))/(2*9.8); % equation, with respect to every vector position
 out = table(v',theta',h','VariableNames',["Velocity","Angle (in degrees)", "Height"]);
end