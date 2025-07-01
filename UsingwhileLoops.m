% Day 9: Using WHILE Loops in MATLAB

% Task 1: Sum numbers until total exceeds 100
total = 0;
n = 1;
while total <= 100
    total = total + n;
    n = n + 1;
end
fprintf('Sum exceeded 100 at n = %d, Total = %d\n', n - 1, total);

% Task 2: Approximating square root using Babylonian method
x = 49;  % number to find square root of
guess = x / 2;
tolerance = 1e-6;
iteration = 0;

while abs(guess^2 - x) > tolerance
    guess = (guess + x / guess) / 2;
    iteration = iteration + 1;
end
fprintf('Square root of %.1f ≈ %.5f (after %d iterations)\n', x, guess, iteration);

% Task 3: Generate sine wave data until max value reaches 0.9
theta = 0;
step = pi / 20;
sin_values = [];

while true
    y = sin(theta);
    sin_values(end+1) = y;
    if abs(y) >= 0.9
        break;
    end
    theta = theta + step;
end

% Plotting the result
figure;
plot(sin_values, 'o-');
xlabel('Step');
ylabel('sin(θ)');
title('Sine Values Collected Using WHILE Loop');
grid on;