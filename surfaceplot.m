
[X, Y] = meshgrid(-3:0.25:3, -3:0.25:3);
Z = X.^2 + Y.^2;

figure;
surf(X, Z, Y);  % mixing axes for variety
title('3D Surface Plot');
xlabel('X-axis'); ylabel('Z-axis'); zlabel('Y-axis');
colorbar;