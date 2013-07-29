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