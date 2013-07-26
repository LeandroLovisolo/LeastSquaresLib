% Sample usage:
%
% xs = -1:0.01:1;
% coefs = [-10 5 5 0 0];
% variance = 0.5;
% X = sample(xs, coefs, variance);
% solve_and_plot(X, xs, coefs, 2)

function solve_and_plot(X, xs, coefs, degree)

coefs_sol = solve(X, degree);

figure;
hold on;
scatter(X(:,1), X(:, 2));
plot(xs, polyval(coefs, xs));
plot(xs, polyval(coefs_sol, xs), 'color', 'red');
hold off;