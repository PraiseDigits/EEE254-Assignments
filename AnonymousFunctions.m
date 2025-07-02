
square = @(x) x.^2;

disp('Square of 4:');
disp(square(4));  

f = @(x) sin(x) + 0.5*x;

figure;
fplot(f, [0, 10], 'LineWidth', 2);
title('Plot of f(x) = sin(x) + 0.5x');
xlabel('x'); ylabel('f(x)');
grid on;

area = integral(f, 0, 10);
fprintf('Area under curve from 0 to 10: %.2f\n', area);