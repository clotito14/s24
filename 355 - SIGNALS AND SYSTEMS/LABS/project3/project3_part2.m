% Chase Lotito - ECE355 Project 3 Part II

clear all

%input the original audio signal and inpulse response signals obained from
%a large hall and a small hall
[a,fs] = audioread('audio_sample.wav');
[h1,fs] = audioread('impulse_response1.wav'); %large hall
[h2,fs] = audioread('impulse_response2.wav'); %small hall

sound(a,fs);
pause(5);sound(h1,fs);
pause(5);sound(h2,fs);
conv_rev1 = conv(a,mean(h1,2));
pause(5);sound(conv_rev1,fs)
conv_rev2 = conv(a,mean(h2,2));
pause(5);sound(conv_rev2,fs)

t1 = 0:1/fs:(length(a)/fs)-(1/fs);
t2a = 0:1/fs:(length(h1)/fs)-(1/fs);
t2b = 0:1/fs:(length(h2)/fs)-(1/fs);
t3a = 0:1/fs:((length(a)+length(h1)-1)/fs)-(1/fs);
t3b = 0:1/fs:((length(a)+length(h2)-1)/fs)-(1/fs);

subplot(2,3,1);
plot(t1,a),xlabel('Time(s)'),ylabel('Amplitude'),title('Original audio sample');
subplot(2,3,2)
plot(t2a,h1),xlabel('Time(s)'),ylabel('Amplitude'),title('Impulse response 1 (Large Room)')
subplot(2,3,3)
plot(t3a,conv_rev1), xlabel('Time(s)'),ylabel('Amplitude'),title('Convoluted audio sample for a large room')
subplot(2,3,4);
plot(t1,a),xlabel('Time(s)'),ylabel('Amplitude'),title('Original audio sample');
subplot(2,3,5)
plot(t2b,h2),xlabel('Time(s)'),ylabel('Amplitude'),title('Impulse response 2 (small Room)')
subplot(2,3,6)
plot(t3b,conv_rev2), xlabel('Time(s)'),ylabel('Amplitude'),title('Convoluted audio sample for a small room')