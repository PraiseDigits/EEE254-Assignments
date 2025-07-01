
A = [2 4 1; 3 5 7; 1 6 2];
B = [1 0 2; 4 3 5; 6 2 1];

C_add = A + B;
C_sub = A - B;

scalar = 3;
C_scalar = scalar * A

C_mult = A * B;

C_elem = A .* B;

A_T = A';


det_A = det(A);

inv_A = inv(A);  % Only if det(A) ≠ 0

I = eye(3);


Z = zeros(3);
O = ones(3);


disp('Matrix A:'); disp(A);
disp('Matrix B:'); disp(B);
disp('A + B:'); disp(C_add);
disp('A - B:'); disp(C_sub);
disp('3 * A:'); disp(C_scalar);
disp('A * B (Matrix Multiplication):'); disp(C_mult);
disp('A .* B (Element-wise Multiplication):'); disp(C_elem);
disp('Transpose of A:'); disp(A_T);
disp('Determinant of A:'); disp(det_A);
disp('Inverse of A:'); disp(inv_A);