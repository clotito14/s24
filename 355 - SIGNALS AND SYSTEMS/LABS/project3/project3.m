% Chase Lotito - ECE355L - Project 3
% PART 1: Plotting Convolutions
% Question 2

dt = 0.001;     % step size
t = -2:dt:25;   % f and g interval
t_y = -4:dt:50; % convolution interval

f = sin(t * pi / 10) .* rectpuls((t-10), 20);
g = cos(t * pi / 5) .* rectpuls((t-7.5), 15);
y = dt*conv(f, g);

% Plot all the convolutions
subplot(3,1,1), plot(t,f), title('f(t)'), axis([-2 25 -2 2]);
subplot(3,1,2), plot(t,g), title('g(t)'), axis([-2 25 -2 2]);
subplot(3,1,3), plot(t_y,y, 'r'), title('y(t) = f(t) * g(t)'), axis([-4 50 -3 2]);
