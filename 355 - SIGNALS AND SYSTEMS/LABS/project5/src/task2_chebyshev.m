%% Chebysev1 lowpass digital filter
clear all;
close all;
clc

% Step 1: Write Filter specifications
Fp=800; % Passband frequency in Hz
Fs=1500; % Stopband frequency in Hz
Ft=8000; % sampling frequency in Hz
Rp=1; % Passband ripple in dB
Rs=80; % Stopband ripple in dB

Wp=Fp/4000; % Normalized Passband frequency = fp/(ft/2) = fp/fn
Ws=Fs/4000; % Normalized Stopband frequency = fs/(ft/2) = fs/fn

% Step 2: Find filter order and cutoff frequency
[N_c1, Wn_c1]=cheb1ord(Wp, Ws, Rp, Rs); % Chebyshev1 lowpass analog filter
disp('Filter Order'),N_c1
disp('Cut-off Frequency'),Wn_c1

% Step 3: Find filter coefficients
[num,den]=cheby1(N_c1,Rp,Wn_c1,'low');

% Step 4: Find zeros, poles and gain
[z_c1,p_c1,k_c1] = cheb1ap(N_c1,Rp);
disp('zeros'),z_c1
disp('poles'),p_c1
disp('gain'),k_c1

% Step 5: Frequency response of the chebysev1 digital filter
[H_c1,W_c1]=freqs(num,den,512); % Frequency response of analog filter
subplot(2,1,1),plot(W_c1,abs(H_c1),'r')
xlabel('Frequency in Hz'),ylabel('Magnitude of H'),title('Frequency repsonse')
subplot(2,1,2); semilogx(W_c1,20*log10(abs(H_c1)),'r');
xlabel('Frequency in Hz'),ylabel('Magnitude of H in dB'),title('Gain repsonse')