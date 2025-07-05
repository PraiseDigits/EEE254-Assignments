
data = randn(1, 1000);  

figure;
histogram(data, 20, 'FaceColor', 'blue', 'EdgeColor', 'black');

title('Histogram of Normally Distributed Data');
xlabel('Value'); ylabel('Frequency');
grid on;

hold on;
xline(mean(data), '--r', 'Mean', 'LineWidth', 1.5);