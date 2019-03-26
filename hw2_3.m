close all;
clear;
clc;
W = zeros(1,1000000);
for iter = 1:1000000
    W1 = [0,randn(1,250).*sqrt(1/250)];
    CS1 = cumsum(W1);
    W(iter) = CS1(250);
end 
avg  = sum(W)/1000000
var  = std(W)*std(W)

% figure;
% plot(W1);
% figure;
% plot(CS1);


