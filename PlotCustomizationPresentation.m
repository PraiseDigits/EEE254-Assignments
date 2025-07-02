x = 0:0.1:10;
y1 = sin(x);
y2 = cos(x);

figure;

plot(x, y1, 'r--o', 'LineWidth', 2, 'MarkerSize', 6); hold on;
plot(x, y2, 'b-.s', 'LineWidth', 2, 'MarkerSize', 6);

title('Customized Sine and Cosine Waves', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Time (s)', 'FontSize', 12);
ylabel('Amplitude', 'FontSize', 12);

legend({'sin(x)', 'cos(x)'}, 'Location', 'northeast');
grid on;

xlim([0 10]);
ylim([-1.5 1.5]);
xticks(0:2:10);
yticks(-1.5:0.5:1.5);

saveas(gcf, 'day24_custom_plot.png');