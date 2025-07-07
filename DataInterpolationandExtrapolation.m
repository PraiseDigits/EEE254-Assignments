

x_known = [0 1 2 3 4 5];
y_known = [2 3 5 4 6 8];

x_query = 0:0.1:5;

y_linear = interp1(x_known, y_known, x_query, 'linear');

y_spline = interp1(x_known, y_known, x_query, 'spline');

p = polyfit(x_known, y_known, 3);
y_poly = polyval(p, x_query);

figure;
plot(x_known, y_known, 'ko', 'MarkerSize', 8, 'DisplayName', 'Original Data'); hold on;
plot(x_query, y_linear, 'b-', 'DisplayName', 'Linear');
plot(x_query, y_spline, 'g--', 'DisplayName', 'Spline');
plot(x_query, y_poly, 'm:', 'DisplayName', 'Polyfit (deg 3)');
xlabel('x'); ylabel('y'); title('Interpolation Comparison');
legend; grid on;