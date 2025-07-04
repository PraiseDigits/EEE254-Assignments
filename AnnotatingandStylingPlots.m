
x = linspace(0, 2*pi, 100);
y = sin(x);

figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

title('Sine Wave with Annotations', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('x (radians)');
ylabel('Amplitude');

plot(pi, sin(pi), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
text(pi, sin(pi)+0.1, 'Peak at \pi', 'HorizontalAlignment', 'center');

annotation('textarrow', [0.4 0.3], [0.5 0.7], 'String', 'Important point');

legend('sin(x)', 'Location', 'southwest');

grid on;