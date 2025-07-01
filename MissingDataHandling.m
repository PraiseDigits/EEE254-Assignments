data = [12, 25, NaN, 47, 53, NaN, 70, 85];

nan_locations = isnan(data);

num_missing = sum(nan_locations);

fprintf('Number of missing values: %d\n', num_missing);

cleaned_data_mean = data;
cleaned_data_mean(nan_locations) = mean(data(~nan_locations));

cleaned_data_interp = fillmissing(data, 'linear');


cleaned_data_removed = rmmissing(data);

disp('Original Data:'); disp(data);
disp('Filled with Mean:'); disp(cleaned_data_mean);
disp('Interpolated:'); disp(cleaned_data_interp);
disp('Removed NaNs:'); disp(cleaned_data_removed);

figure;
subplot(3,1,1); stem(data, 'filled'); title('Original (with NaN)'); grid on;
subplot(3,1,2); stem(cleaned_data_mean, 'filled'); title('Filled with Mean'); grid on;
subplot(3,1,3); stem(cleaned_data_interp, 'filled'); title('Interpolated'); grid on;