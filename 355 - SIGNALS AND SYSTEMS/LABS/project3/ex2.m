dt = 0.001;
t = -1:dt:4;
f = rectpuls(t - 0.5);
g = exp(-t).*rectpuls((t-1.5)/3);
y = dt*conv(f, g);
t1 = -2:dt:8;
subplot(3,1,1), plot(t,f), axis([-2 8 0 2]);
subplot(3,1,2), plot(t,g), axis([-2 8 0 2]);
subplot(3,1,3), plot(t1,y), axis([-2 8 0 2]);