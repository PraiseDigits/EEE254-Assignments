% Basic Plotting in MATLAB

% Generate x data from 0 to 2*pi
x = linspace(0, 2*pi, 100);  

% Calculate sine and cosine values
y1 = sin(x);
y2 = cos(x);

% Create the plot
figure;
plot(x, y1, 'b-', 'LineWidth', 2);   % Plot sine in blue
hold on;
plot(x, y2, 'r--', 'LineWidth', 2);  % Plot cosine in red dashed line

% Add labels and title
xlabel('Angle (radians)');
ylabel('Amplitude');
title('Sine and Cosine Waves');
legend('sin(x)', 'cos(x)');
grid on;
