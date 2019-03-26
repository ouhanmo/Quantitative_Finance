close all;
clear;

% Simulation Settings
num_steps = 2000;
T = 20;

% Hyperparameters
beta = 0.1;
m = 0.5;
alpha = 0.1;
S0 = 0.5;

dt = T/num_steps;
time = 0:dt:T;

% Brownian Motion
dW = sqrt(dt)*randn(1,num_steps);

S =zeros(1,num_steps+1);
S(1) = S0;
% dS
for ind = 1:num_steps
    dS = alpha*(m - S(ind))* dt + beta * dW(ind); 
    S(ind+1) = dS + S(ind);
end 
% Plot
figure;
plot(time, S);
xlabel("Time");
ylabel("Price");
