

time = datetime(2023,1,1,0,0,0) + minutes(0:15:180);  % every 15 mins

temperature = 25 + randn(size(time));  % random noise around 25°C

TT = timetable(time', temperature', 'VariableNames', {'Temperature'});

disp(TT(1:5,:));

TT_hourly = retime(TT, 'hourly', 'mean');

figure;
plot(TT.Time, TT.Temperature, 'b.-', 'DisplayName', 'Raw Data'); hold on;
plot(TT_hourly.Time, TT_hourly.Temperature, 'ro-', 'DisplayName', 'Hourly Avg');
legend; grid on;
xlabel('Time'); ylabel('Temperature (°C)');
title('Temperature Readings - Raw vs Hourly Average');