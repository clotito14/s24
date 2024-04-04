dt = 0.001;
t = -1:dt:3;
f = rectpuls((t - 1),2);
g = f;
y = conv(f, g) * dt;
t1 = -2:dt:6;
subplot(3,1,1), plot(t,f), axis([-2 6 0 2]);
subplot(3,1,2), plot(t,g), axis([-2 6 0 2]);
subplot(3,1,3), plot(t1,y), axis([-2 6 0 2]);