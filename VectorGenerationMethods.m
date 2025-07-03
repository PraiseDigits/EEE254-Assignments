
v1 = 0:2:10;
disp('Colon operator (0:2:10):'); disp(v1);

v2 = linspace(0, 10, 10);
disp('linspace(0,10,10):'); disp(v2);

v3 = logspace(1, 3, 10);
disp('logspace(1,3,10):'); disp(v3);

figure;
subplot(3,1,1);
stem(v1, 'filled'); title('Colon Operator (0:2:10)');

subplot(3,1,2);
stem(v2, 'filled'); title('linspace(0,10,10)');

subplot(3,1,3);
semilogy(v3, 'o-'); title('logspace(1,3,10)');
xlabel('Index'); ylabel('Value');