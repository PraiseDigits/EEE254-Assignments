

a = 15;
b = 20;

if (a < b) && (a ~= 0)
    fprintf('a is less than b and not zero.\n');
end

temp = 35;
if (temp < 0) || (temp > 30)
    disp('⚠️ Temperature out of safe range!');
end

data = [12, 45, 28, 60, 5, 100];

logical_mask = (data > 30) & (data < 90);
filtered_data = data(logical_mask);

disp('Filtered values between 30 and 90:');
disp(filtered_data);