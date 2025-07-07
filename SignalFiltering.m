
fs = 1000;             
t = 0:1/fs:1;         
clean_signal = sin(2*pi*50*t);  


noise = 0.4*sin(2*pi*200*t);   
noisy_signal = clean_signal + noise;


filtered_low = lowpass(noisy_signal, 100, fs);  


filtered_high = highpass(noisy_signal, 100, fs);

filtered_band = bandpass(noisy_signal, [40 60], fs);

figure;
subplot(4,1,1);
plot(t, noisy_signal); title('Noisy Signal'); ylabel('Amplitude');
subplot(4,1,2);
plot(t, filtered_low); title('Lowpass Filtered (<100 Hz)');
subplot(4,1,3);
plot(t, filtered_high); title('Highpass Filtered (>100 Hz)');
subplot(4,1,4);
plot(t, filtered_band); title('Bandpass Filtered (40–60 Hz)');
xlabel('Time (s)');