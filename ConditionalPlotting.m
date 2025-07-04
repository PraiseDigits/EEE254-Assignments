
temps = [36.5, 37.2, 39.1, 38.7, 36.8, 40.3, 37.0, 39.5];
threshold = 38;

high_mask = temps > threshold;

figure;
plot(temps, 'o-', 'LineWidth', 1.5);
hold on;

plot(find(high_mask), temps(high_mask), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

yline(threshold, '--k', 'Threshold 38°C');

title('Temperature Readings with Conditional Highlighting');
xlabel('Sample Number'); ylabel('Temperature (°C)');
legend('All Temps', 'Above Threshold', 'Location', 'northwest');
grid on;