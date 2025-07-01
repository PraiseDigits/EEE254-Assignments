% Generate numbers from 1 to 1000
x = 1:1000;
y = x.^2;

% Linear plot
figure;
plot(x, y, 'b', 'LineWidth', 1.5);
xlabel('Number');
ylabel('Square of Number');
title('Squares of Numbers from 1 to 1000');
grid on;

% Logarithmic plot for better scale perception
figure;
loglog(x, y, 'r', 'LineWidth', 1.5);
xlabel('Number (log scale)');
ylabel('Square (log scale)');
title('Log-Log Plot of Squares from 1 to 1000');
grid on;
