
raw_data = [15, 22, NaN, 19, 0, 88, NaN, 101, -5, 30];

mean_val = mean(raw_data(~isnan(raw_data)));
cleaned_data = raw_data;
cleaned_data(isnan(cleaned_data)) = mean_val;

valid_data = cleaned_data(cleaned_data >= 10 & cleaned_data <= 100);

norm_data = (valid_data - min(valid_data)) / (max(valid_data) - min(valid_data));

disp('Original Raw Data:'); disp(raw_data);
disp('Cleaned Data (No NaNs, Valid Range):'); disp(valid_data);
disp('Normalized Data [0–1]:'); disp(norm_data);