
disp('Squares of 1 to 10:');
for i = 1:10
    fprintf('%d squared is %d\n', i, i^2);
end

sum_result = 0;
for n = 1:100
    sum_result = sum_result + n;
end
fprintf('\nSum of numbers from 1 to 100 is: %d\n', sum_result);


x = 1:0.1:2*pi;
y = zeros(size(x));
for k = 1:length(x)
    y(k) = sin(x(k));
end


figure;
plot(x, y, 'r', 'LineWidth', 1.5);
xlabel('x');
ylabel('sin(x)');
title('Sine Function Computed Using FOR Loop');
grid on;