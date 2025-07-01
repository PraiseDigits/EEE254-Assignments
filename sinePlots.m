
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

figure;
plot(x, y1, 'r-', 'LineWidth', 2); hold on;
plot(x, y2, 'b--', 'LineWidth', 2);
title('Sine and Cosine Waves');
xlabel('x (radians)');
ylabel('Amplitude');
legend('sin(x)', 'cos(x)');
grid on;