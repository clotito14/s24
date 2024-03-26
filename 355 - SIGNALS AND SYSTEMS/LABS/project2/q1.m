% Chase Lotito - SIUC - Spring 2024
% ECE355L - Project 2
% Q1: dsolve to solve for zero-input response
% y0 = dsolve('D3y + 8*D2y + 2521*Dy + 5018*y = 0', 'y(0)=1', 'Dy(0)=1', 'D2y(0)=0');

% system variable
syms y(t)           % make y a function of t

% initial conditions
Dy = diff(y,t);         % define D operator
D2y = diff(y,t,2);      % define D2 operator
cond = [y(0) == 1, Dy(0) == 1, D2y(0) == 0]; % set initial conditions

y0 = diff(y, t, 3) + 8 * diff(y, t, 2) + 2521 * diff(y, t) + 5018 * y == 0;
S = dsolve(y0, cond); % solve diff eq. with ICs

% get latex of it
chr = latex(S);

% ... Exercise 1 Code Above...
fplot(S, [0,4]);]
xlabel('t');
ylabel('y0(t)');
title('Zero-Input Response');