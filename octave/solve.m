function coefs_sol = solve(X, degree)

% Reference implementation:
% coefs_sol = A \ y;
% coefs_sol = fliplr(coefs_sol');

A = [];

for i = 1:rows(X)
	row = [];

	for j = 0:degree
		row(j + 1) = X(i, 1)^j;
	end

	A = [A; row];
end

y = X(:, 2);

[Q R] = myqr(A);

c = Q' * y;
coefs_sol = back_substitution(R(1:columns(R), :), c(1:columns(R)));
coefs_sol = fliplr(coefs_sol');


function x = back_substitution(A, b)

% Reference implementation:
% x = A \ b;

x = zeros(length(A), 1);

i = length(A);

while(i > 1)
	x(i) = b(i);

	j = i + 1;

	while(j <= length(A))
		x(i) = x(i) - A(i, j) * x(j);
		j++;
	end

	x(i) = x(i) / A(i, i);

	i--;
end