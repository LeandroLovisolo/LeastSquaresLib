% Sample usage:
% 
% X = sample(0:0.1:10, [0.5 2], 1);
% scatter(X(:,1), X(:,2));

function X = sample(xs, coefs, variance)

X = [xs', polyval(coefs, xs)' + normrnd(0, variance, length(xs), 1)];
