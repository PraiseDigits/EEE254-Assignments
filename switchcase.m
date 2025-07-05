operation = 'multiply';

a = 10;
b = 5;

switch operation
    case 'add'
        result = a + b;
    case 'subtract'
        result = a - b;
    case 'multiply'
        result = a * b;
    case 'divide'
        if b ~= 0
            result = a / b;
        else
            result = 'Error: Division by zero';
        end
    otherwise
        result = 'Invalid operation selected';
end

disp(['Result: ', num2str(result)]);