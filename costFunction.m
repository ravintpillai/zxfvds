function [J grad] = nCostFunction(initial_Theta1,...
									initial_Theta2,...
									scaled_X,...
									y,...
									lambda)

m = length(scaled_X);

scaled_X_N = [ones(m,1) scaled_X];
h_theta_1 = scaled_X_N * initial_Theta1'; %'
a2 = [ones(m,1) h_theta_1];
h_theta_2 = a2 * initial_Theta2'; %'

error = h_theta_2 - y;

J = sum(error.^2);
grad = 10;