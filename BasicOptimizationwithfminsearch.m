
f = @(x) (x - 3).^2 + 5;

x0 = 0;

[x_min, fval] = fminsearch(f, x0);

fprintf('Minimum found at x = %.4f\n', x_min);
fprintf('Function value at minimum = %.4f\n', fval);

x = linspace(-2, 8, 100);
y = f(x);

figure;
plot(x, y, 'b', 'LineWidth', 2); hold on;
plot(x_min, fval, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
xlabel('x'); ylabel('f(x)');
title('Minimizing f(x) = (x - 3)^2 + 5');
grid on;