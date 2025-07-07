
figure;
h = plot(NaN, NaN, 'b.-', 'LineWidth', 1.5);
xlim([0 100]); ylim([-1.5 1.5]);
xlabel('Sample'); ylabel('Amplitude');
title('Simulated Real-Time Sine Wave');

x = [];
y = [];

for i = 1:100
    new_x = i;
    new_y = sin(2*pi*0.05*i) + 0.1*randn();  

    x = [x new_x];
    y = [y new_y];

    
    set(h, 'XData', x, 'YData', y);
    drawnow;

    pause(0.05); 
end