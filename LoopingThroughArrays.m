
temps_C = [20, 25, 30, 15, 10];


temps_F = zeros(size(temps_C));


for i = 1:length(temps_C)
    temps_F(i) = (temps_C(i) * 9/5) + 32;
end

disp('Temperatures in Celsius:');
disp(temps_C);
disp('Converted to Fahrenheit:');
disp(temps_F);