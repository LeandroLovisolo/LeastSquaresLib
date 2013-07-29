function H = householder(A)

u = A(:, 1);
u(1) = u(1) + norm(u);

gamma = 2 / norm(u)^2;

H = eye(length(A)) - gamma * u * u';