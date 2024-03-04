% Rectangular Pulse

t = -2:0.01:2;
r = rectpuls(t-0.5);
rd = rectpuls(t-1.5);

% Plotting
subplot (2,1,1), plot(t,r), axis([-3,4,0,2]);
subplot (2,1,2), plot(t,rd), axis([-3,4,0,2]);
