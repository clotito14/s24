% Example from Project 1 Manual

t = -2:0.001:4;
fa = exp(2*t) .* rectpuls(t-0.5);    % original signal
fb = exp(2*(t+2)) .* rectpuls((t+2)-0.5);    % time-delayed signal
fc = exp(2*(-t)) .* rectpuls((-t)-0.5);    % time-inverted signal
fd = exp(2*(t/3)) .* rectpuls((t/3)-0.5);    % stretched signal

% Plots => subplot(rows,cols,location) and axis([xmin, xmax, ymin, ymax])
subplot(4,1,1), plot(t,fa), axis([-3, 5, -10, 10]);
subplot(4,1,2), plot(t,fb), axis([-3, 5, -10, 10]);
subplot(4,1,3), plot(t,fc), axis([-3, 5, -10, 10]);
subplot(4,1,4), plot(t,fd), axis([-3, 5, -10, 10]);