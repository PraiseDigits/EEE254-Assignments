% population_growth_models.m
% Simulate Exponential and Logistic Population Growth

% Parameters
initial_pop = 100;    % Starting population
r           = 0.1;    % Growth rate (10% per time step)
T           = 50;     % Number of time steps
K           = 1000;   % Carrying capacity for logistic model

% Preallocate vectors
pop_exp = zeros(1, T+1);
pop_log = zeros(1, T+1);
pop_exp(1) = initial_pop;
pop_log(1) = initial_pop;

% 1) Exponential Growth: P(t+1) = P(t) * (1 + r)
for t = 1:T
    pop_exp(t+1) = pop_exp(t) * (1 + r);
end

% 2) Logistic Growth: P(t+1) = P(t) + r*P(t)*(1 - P(t)/K)
t = 1;
while t <= T
    P = pop_log(t);
    pop_log(t+1) = P + r * P * (1 - P / K);
    t = t + 1;
end

% Time vector
time = 0:T;

% Plot both models
figure;
plot(time, pop_exp, 'o-', 'LineWidth', 1.5);
hold on;
plot(time, pop_log, 's--', 'LineWidth', 1.5);
xlabel('Time Step');
ylabel('Population');
title('Exponential vs. Logistic Population Growth');
legend('Exponential Growth','Logistic Growth','Location','NorthWest');
grid on;
hold off;
