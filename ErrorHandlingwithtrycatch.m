% Day 20: Error Handling using try-catch in MATLAB

% Simulate risky code: division by zero
a = input('Enter a number to divide 100 by: ');

try
    result = 100 / a;
    fprintf('100 divided by %.2f = %.2f\n', a, result);
catch ME
    disp('⚠️ An error occurred:');
    disp(ME.message);
    disp('Hint: You may have entered zero or an invalid value.');
end

disp('Execution continues after error handling...');