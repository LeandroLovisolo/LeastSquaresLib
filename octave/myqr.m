function [Q R] = myqr(A)

% Reference implementation:
% [Q R] = qr(A)

if(rows(A) < columns(A))
	error('Number of rows must be greater or equal than number of columns.');
end

Q = eye(rows(A));
R = A;

i = 1;

while(i <= columns(A))
	H = householder(R(i:end, i:end));
	Q_i = eye(rows(A));
	Q_i(i:end, i:end) = H;

	Q = Q * Q_i;
	R = Q_i' * R;

	i++;
end