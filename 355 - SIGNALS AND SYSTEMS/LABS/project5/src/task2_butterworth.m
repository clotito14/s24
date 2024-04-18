%% Butterworth lowpass digital filter
clear all;
close all;
clc

% Step 1: Write Filter specifications
Fp=800; % Passband frequency in Hz
Fs=1500; % Stopband frequency in Hz
Ft=8000; % sampling frequency in Hz
Rp=1; % Passband ripple in dB
Rs=80; % Stopband ripple in dB

% Wp and Ws are respectively the passband and stopband edge frequencies of the filter,
Wp=Fp/4000; % Normalized Passband frequency = fp/fn = fp/(ft/2)
Ws=Fs/4000; % Normalized Stopband frequency = fs/fn

% Step 2: Find filter order and cutoff frequency
[N_b, Wn_b]=buttord(Wp, Ws, Rp, Rs);
disp('Filter Order'), N_b;
disp('Cut-off Frequency'), Wn_b;

% Step 3: Find filter coefficients
[num,den]=butter(N_b,Wn_b);

% Step 4: 512-pint Frequency response of the filter.
[H_b,W_b]=freqz(num,den,512); % Frequency response of digital filter
                              %W_b is the frequency vector
subplot(2,1,1),plot(W_b,abs(H_b),'b')
xlabel('Frequency in Hz'),ylabel('Magnitude of H'),title('Frequency repsonse')
subplot(2,1,2); semilogx(W_b,20*log10(abs(H_b)),'b');
xlabel('Frequency in Hz'),ylabel('Magnitude of H in dB'),title('Gain repsonse')