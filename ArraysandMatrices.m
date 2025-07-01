% Day 1: Working with Scalars, Vectors, and Matrices

% Scalar
a = 10;

% Row vector
rowVec = [1 2 3 4 5];

% Column vector
colVec = [1; 2; 3; 4; 5];

% Matrix
A = [1 2 3; 4 5 6; 7 8 9];

% Access elements
val1 = rowVec(3);     % third element of row vector
val2 = A(2,3);        % element in 2nd row, 3rd column

% Modify element
A(1,1) = 100;

% Add scalar to matrix
B = A + 5;

% Transpose
A_T = A';

% Matrix multiplication
C = A * A_T;

% Element-wise multiplication
D = A .* A_T;

% Display results
disp('Original Matrix A:');
disp(A);
disp('A Transposed:');
disp(A_T);
disp('A * A_T (Matrix Multiplication):');
disp(C);
disp('A .* A_T (Element-wise Multiplication):');
disp(D);
