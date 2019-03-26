close all;
clear;

% Simulation Settings
num_steps = 2000;
T = 20;

% Hyperparameters
sigma = 0.01;
mu = 0.01;
S0 = 1;


dt = T/num_steps;
time = 0:dt:T;

% Brownian Motion
dW = sqrt(dt)*randn(1,num_steps);

% dS/S
incre = sigma*dW + mu*dt;
log_S = cumsum([log(S0) incre]);
S = exp(log_S);

% Plot
figure;
plot(time, S);
xlabel("Time");
ylabel("Price");
