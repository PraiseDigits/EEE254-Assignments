
[x, y] = meshgrid(-3:0.1:3, -3:0.1:3);

z = sin(sqrt(x.^2 + y.^2));

figure;
subplot(1,2,1);
mesh(x, y, z);
title('3D Mesh Plot');
xlabel('X'); ylabel('Y'); zlabel('Z');
grid on;

subplot(1,2,2);
surf(x, y, z);
title('3D Surface Plot');
xlabel('X'); ylabel('Y'); zlabel('Z');
shading interp; % smooth color shading
colorbar;