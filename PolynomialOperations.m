
p = [1 -6 11 -6];

val = polyval(p, 2);
fprintf('Value of p(x) at x=2: %.2f\n', val);

r = roots(p);
disp('Roots of the polynomial:'); disp(r);

dp = polyder(p);
disp('Derivative coefficients:'); disp(dp);

ip = polyint(p);
disp('Integral coefficients:'); disp(ip);

x = linspace(0, 4, 100);
y = polyval(p, x);
figure;
plot(x, y, 'LineWidth', 2);
grid on;
xlabel('x'); ylabel('p(x)');
title('Plot of Polynomial: p(x) = x^3 - 6x^2 + 11x - 6');