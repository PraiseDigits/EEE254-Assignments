

A = [11 12 13 14; 
     21 22 23 24; 
     31 32 33 34; 
     41 42 43 44];


element = A(2, 3);  


col2 = A(:, 2);  


slice_row = A(1, 2:4); 


submatrix = A(1:2, 1:2);  


A(3:4, 4) = [99; 88];  


greater_than_30 = A(A > 30);  


disp('Original Matrix A (after modification):'); disp(A);
disp('Element A(2,3):'); disp(element);
disp('Column 2:'); disp(col2);
disp('Row 1, cols 2 to 4:'); disp(slice_row);
disp('Top-left 2x2 submatrix:'); disp(submatrix);
disp('Elements greater than 30:'); disp(greater_than_30);