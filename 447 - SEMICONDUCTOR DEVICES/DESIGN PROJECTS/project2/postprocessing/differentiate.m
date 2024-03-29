clear all;
close all;
clc

M=dlmread('2nm.txt');
k = M(:,1);
E = M(:,2);

N = length(k);
d2E = diff(E,2);
d2k = diff(k,2);
d2E_d2k = d2E ./ d2k;
d2E_d2k(N) = d2E_d2k(N-1);

subplot(1,2,1);
plot(k,E);
subplot(1,2,2);
plot(k, d2E_d2k);
