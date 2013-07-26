function coefs_sol = solve(X, degree)

A = [];

for i = 1:rows(X)
	row = [];

	for j = 0:degree
		row(j + 1) = X(i, 1)^j;
	end

	A = [A; row];
end

y = X(:, 2);

coefs_sol = A \ y;
coefs_sol = fliplr(coefs_sol');