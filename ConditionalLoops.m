temperature_readings = 25 + (50-25)*rand(1,15);

for i = 1:length(temperature_readings)
    temp = temperature_readings(i);
    fprintf('Reading %d: %.2f°C\n', i, temp);
    
    if temp > 40
        disp('⚠️ Warning: Temperature above threshold!');
    else
        disp('✅ Temperature within safe range.');
    end
    
    pause(0.3);  % Simulate delay between readings
end