

A = randi([10, 100], 5, 5); 0


mask_gt_50 = A > 50;


values_gt_50 = A(mask_gt_50);


A(A < 30) = 0;


[row_idx, col_idx] = find(A > 90);


count_60plus = sum(A(:) >= 60);


has_75 = any(A(:) == 75);


disp('Modified Matrix A:');
disp(A);
disp('Values > 50:'); disp(values_gt_50);
disp('Indices where A > 90:'); disp([row_idx, col_idx]);
disp(['Count of values >= 60: ', num2str(count_60plus)]);
disp(['Does A contain 75? ', mat2str(has_75)]);