% Chase Lotito - SIUC Undergrad - ECE355L
% Task 3 - Q2

t = -7:0.001:7;

fa = -t.*rectpuls(t+2,4) + t.*rectpuls(t-1, 2);
fb = -(t-4).*rectpuls((t-4)+2,4) + (t-4).*rectpuls((t-4)-1, 2);
fc = -(t/1.5).*rectpuls((t/1.5)+2,4) + (t/1.5).*rectpuls((t/1.5)-1, 2);
fd = -(-t).*rectpuls((-t)+2,4) + (-t).*rectpuls((-t)-1, 2);
fe = -(2*t-4).*rectpuls((2*t-4)+2,4) + (2*t-4).*rectpuls((2*t-4)-1, 2);
ff = -(2-t).*rectpuls((2-t)+2,4) + (2-t).*rectpuls((2-t)-1, 2);

subplot(6,1,1), plot(t, fa), axis([-25,25,-6,6]), grid on;
subplot(6,1,2), plot(t, fb), axis([-25,25,-6,6]), grid on;
subplot(6,1,3), plot(t, fc), axis([-25,25,-6,6]), grid on;
subplot(6,1,4), plot(t, fd), axis([-25,25,-6,6]), grid on;
subplot(6,1,5), plot(t, fe), axis([-25,25,-6,6]), grid on;
subplot(6,1,6), plot(t, ff), axis([-25,25,-6,6]), grid on;
