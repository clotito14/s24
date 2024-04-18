clear all;
close all;
clc;

% Step 1: Write Filter specifications
Rp = 3; %% Passband ripple
Rs = 40; %% Stopband ripple
Ft = 2000; %% Sampling frequency
Fp = 500; %% Passband cutoff frequency
Fs = 600; %% Stopband cutoff frequency
f = [Fp Fs]; % % Passband and Stopband Cutoff frequencies
a = [1 0]; % % Desired amplitudes , 1 for passband, 0 for stopband

% Step 2: Compute deviations
dev = [(10^(Rp/20)-1)/(10^(Rp/20)+1) , 10^(-Rs/20)];

% Parks-McClellan optimal equiripple FIR order estimator
[n,fo,ao,w] = firpmord(f,a,dev,Ft);

%use either firpm() or remez() for Parks-McClellan optimal equiripple FIR filter design
B = remez(n,fo,ao,w); %% Numerator of transfer function
A = 1; %% Denominator of transfer function

[H,W]=freqz(B,A,1024); % Frequency response of the filter
figure(1),subplot(211),plot((W/pi)*(Ft/2),abs(H))
xlabel('Frequency in Hz'),ylabel('Magnitude'),title('Frequency Response')
subplot(212),plot((W/pi)*(Ft/2),20*log10(abs(H)))
xlabel('Frequency in Hz'),ylabel('Gain in dB'),title('Gain Response')