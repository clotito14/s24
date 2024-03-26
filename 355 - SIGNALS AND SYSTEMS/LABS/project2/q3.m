% Chase Lotito - 355L Project 2 - Exercise 3
% Define the numerator and denominator coefficients
num = [1 0 5018];
den = [1 8 2521 5018];
% Create the transfer function object
TFsys = tf(num, den);
% Remove the roots from the transfer function
TFsys_no_roots = tzero(TFsys);
% Define the time vector
t_vec = 0:0.01:10; % Time vector from 0 to 10 with a step size of 0.01
% Calculate the step response
[ystep, t_step] = step(TFsys_no_roots, t_vec);
% Calculate the impulse response
[h, t_impulse] = impulse(TFsys_no_roots, t_vec);
% Plot the step response
subplot(2, 1, 1);
plot(t_vec(1:length(ystep)), ystep); % Adjust the length of t_vec
title('Step Response');
xlabel('t');
ylabel('y_{step}(t)');
% Plot the impulse response
subplot(2, 1, 2);