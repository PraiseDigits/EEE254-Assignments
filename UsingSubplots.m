
x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = sin(2*x);
y4 = cos(2*x);

figure;

subplot(2,2,1);
plot(x, y1, 'b', 'LineWidth', 1.5);
title('sin(x)'); grid on;

subplot(2,2,2);
plot(x, y2, 'r', 'LineWidth', 1.5);
title('cos(x)'); grid on;

subplot(2,2,3);
plot(x, y3, 'g', 'LineWidth', 1.5);
title('sin(2x)'); grid on;

subplot(2,2,4);
plot(x, y4, 'm', 'LineWidth', 1.5);
title('cos(2x)'); grid on;

sgtitle('Comparing Trigonometric Functions');