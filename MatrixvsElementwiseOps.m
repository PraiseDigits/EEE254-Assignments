
A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];

C1 = A + B;      
C2 = A .* B;      
C3 = A .^ 2;      
C4 = A ./ B;      


M1 = A * B;       


disp('Element-wise multiplication (A .* B):'); disp(C2);
disp('Matrix multiplication (A * B):'); disp(M1);