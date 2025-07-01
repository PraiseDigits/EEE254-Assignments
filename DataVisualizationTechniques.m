
x = 0:0.1:10;
y = sin(x);

categories = {'A', 'B', 'C', 'D'};
values = [25, 40, 35, 10];

rand_data = randn(1, 100);

matrix_data = randi([1, 10], 10, 10);

figure;
subplot(2,2,1);
plot(x, y, 'b', 'LineWidth', 1.5);
title('Line Plot (Sine Wave)');
xlabel('x'); ylabel('sin(x)'); grid on;

subplot(2,2,2);
bar(values);
set(gca, 'XTickLabel', categories);
title('Bar Chart (Category Comparison)');
ylabel('Value');

subplot(2,2,3);
scatter(1:100, rand_data, 'filled');
title('Scatter Plot (Random Data)');
xlabel('Index'); ylabel('Value');

subplot(2,2,4);
heatmap(matrix_data);
title('Heatmap (Matrix Data)');