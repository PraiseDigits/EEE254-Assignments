
x = 0:0.1:2*pi;
y = sin(x);
figure;
plot(x, y, 'LineWidth', 2);
title('Sine Wave');
xlabel('x'); ylabel('sin(x)');
grid on;

saveas(gcf, 'sine_plot.png');
saveas(gcf, 'sine_plot.pdf');

savefig('sine_plot.fig');

data = [x' y'];
writematrix(data, 'sine_data.csv');

save('sine_workspace.mat', 'x', 'y');