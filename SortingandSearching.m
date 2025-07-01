
data = [34, 12, 89, 45, 67, 23, 89, 5];

sorted_asc = sort(data);           
sorted_desc = sort(data, 'descend');  

[min_val, min_idx] = min(data);
[max_val, max_idx] = max(data);

positions = find(data == 89);

is_present = ismember(45, data);

has_large = any(data > 80);

disp('Original Data:'); disp(data);
disp('Sorted (Ascending):'); disp(sorted_asc);
disp('Sorted (Descending):'); disp(sorted_desc);
fprintf('Min Value: %d at Index %d\n', min_val, min_idx);
fprintf('Max Value: %d at Index %d\n', max_val, max_idx);
disp('Positions of 89:'); disp(positions);
fprintf('Is 45 present? %d\n', is_present);
fprintf('Any value > 80? %d\n', has_large);