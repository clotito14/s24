% Chase Lotito - ECE355L
% Exercise 1

clc
clear all
close all
syms t k L n % Initialize symbolic variables
evalin(symengine,'assume(k,Type::Integer)'); % Let matlab know that the variable k is an integer
a = @(f,t,k,L) int(f*cos(k*pi*t)/L,t,-L,L); % create kth cosine coefficient a
b = @(f,t,k,L) int(f*sin(k*pi*t)/L,t,-L,L); % create kth sine coefficient b
fs = @(f,t,n,L) a(f,t,0,L)/2 + ...
symsum(a(f,t,k,L)*cos(k*pi*t/L) + b(f,t,k,L)*sin(k*pi*t/L),k,1,n); % generate the nth partial sum
f = t; % Original function
ezplot(fs(f,t,2,1),-1,1) % Plotting the functions and the partial sum
hold on
ezplot(fs(f,t,10,1),-1,1) % n=10
hold on
ezplot(fs(f,t,20,1),-1,1) % n=20
hold on
ezplot(fs(f,t,50,1),-1,1) % n=50
hold on
ezplot(fs(f,t,100,1),-1,1) % n=100
hold on
ezplot(f,-1,1)
hold off
title('Partial Sums n=2, 10, 20, 50, 100'),xlabel('Time'),ylabel('Amplitude')
legend('n=2', 'n=10', 'n=20', 'n=50', 'n=100','Original')