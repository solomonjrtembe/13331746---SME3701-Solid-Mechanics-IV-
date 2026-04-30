clc;
clear;
close all;
%Question 1.1
% These are the given system parameters
m = 5;         %mass in kg
k = 2000;      %spring stiffness in N/m
x0 = 0.02;     %initial displacement in meters

%Formula for natural angular frequency
% wn = sqrt(k/m)
% This comes from the equation of motion: m*x'' + k*x = 0

wn = sqrt(k/m);

% Results 
disp(['Natural angular frequency (wn) = ', num2str(wn), ' rad/s']); 

% Question 1.2
% Time range for analysis 
t = 0:0.01:5;

% Displacement equation 
% x(t) = x0*cos(wn*t)
% This is the solution for undamped free vibration with zero initial
% velocity
x = x0*cos(wn*t);

% First few values to confirm computation
disp('First few displacement values:');
disp(x(1:5));

% Question 1.3
% Plot Displacement vs Time 

figure;
plot(t, x, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Displacement x(t) [m]');
title('Displacement vs Time'); 
grid on;

% Question 1.4
% Velocity and Plot 

% Velocity
v = -x0*wn*sin(wn* t);

figure;
plot(t, v, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Velocity v(t) [m/s]');
title('Velocity vs Time');
grid on;