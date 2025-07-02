
data = [12, 45, 8, 90, 33, 5, 77, 28];

mask = data > 30;
high_values = data(mask);
disp('Values > 30:');
disp(high_values);

data(data < 10) = 0;
disp('Updated data (values < 10 set to 0):');
disp(data);

range_mask = data >= 20 & data <= 80;
count = sum(range_mask);
fprintf('Number of values between 20 and 80: %d\n', count);