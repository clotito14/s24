% Chase Lotito - SIUC Undergrad - ECE355L
% Task 3 - Q1 - Plotting with subplots

% using the rectpuls
% --> rectpuls(t - a, width) [a horizontal shift, default width = 1]

t = -25:0.001:25;
fa = ((1/6)*t - 2).*rectpuls(t-10.5, 9) +  ((-1/18)*t + (4/3)).*rectpuls(t-19.5, 9);
fb = ((1/6)*(t+6) - 2).*rectpuls((t+6)-10.5, 9) +  ((-1/18)*(t+6) + (4/3)).*rectpuls((t+6)-19.5, 9);
fc = ((1/6)*(-t) - 2).*rectpuls((-t)-10.5, 9) +  ((-1/18)*(-t) + (4/3)).*rectpuls((-t)-19.5, 9);
fd = ((1/6)*(3*t) - 2).*rectpuls((3*t)-10.5, 9) +  ((-1/18)*(3*t) + (4/3)).*rectpuls((3*t)-19.5, 9);

subplot(4,1,1), plot(t, fa), axis([-25,25,-2,2]), grid on;
subplot(4,1,2), plot(t, fb), axis([-25,25,-2,2]), grid on;
subplot(4,1,3), plot(t, fc), axis([-25,25,-2,2]), grid on;
subplot(4,1,4), plot(t, fd), axis([-25,25,-2,2]), grid on;
