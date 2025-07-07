
time = datetime(2023,1,1,0,0,0) + hours(0:167);  % 7 days * 24 = 168 hours
temperature = 25 + 5*sin(2*pi*(1/24)*hours(time - time(1))) + randn(size(time));

TT = timetable(time', temperature', 'VariableNames', {'Temperature'});

TT_daily = retime(TT, 'daily', 'mean');

hot_times = TT.Time(TT.Temperature > 30);
cold_times = TT.Time(TT.Temperature < 20);

figure;
plot(TT.Time, TT.Temperature, 'b-', 'DisplayName', 'Hourly Temp'); hold on;
plot(TT_daily.Time, TT_daily.Temperature, 'r-', 'LineWidth', 2, 'DisplayName', 'Daily Avg');

plot(hot_times, TT.Temperature(TT.Temperature > 30), 'ro', 'MarkerFaceColor', 'r', 'DisplayName', 'Hot (>30°C)');
plot(cold_times, TT.Temperature(TT.Temperature < 20), 'go', 'MarkerFaceColor', 'g', 'DisplayName', 'Cold (<20°C)');

title('7-Day Temperature Dashboard');
xlabel('Time'); ylabel('Temperature (°C)');
legend; grid on;