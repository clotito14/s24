% Time Shifting a Signal

t = -2*pi : pi/100 : 2*pi;
f = sin(t);
fd = sin(t-2);
fa = sin(t+3);

% Plotting
subplot(3,1,1), plot(t,f), axis([-3*pi,3*pi,-1,1]), grid on;
subplot(3,1,2), plot(t,fd), axis([-3*pi,3*pi,-1,1]), grid on;
subplot(3,1,3), plot(t,fa), axis([-3*pi,3*pi,-1,1]), grid on;
