
fs = 1000;             
t = 0:1/fs:1;          
signal = sin(2*pi*5*t);  

subplot(3,1,1);
plot(t, signal, 'b');
title('Original Signal');
xlabel('Time (s)'); ylabel('Amplitude');

reversed_signal = flip(signal);

subplot(3,1,2);
plot(t, reversed_signal, 'r');
title('Reversed Signal');
xlabel('Time (s)'); ylabel('Amplitude');

scaled_signal = 2 * signal + 1;

subplot(3,1,3);
plot(t, scaled_signal, 'g');
title('Scaled and Offset Signal');
xlabel('Time (s)'); ylabel('Amplitude');