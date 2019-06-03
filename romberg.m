H = 4;
h = H; 

syms x, 
fx = 3^x; 
R = zeros(5);
R(1,1) = 0.5*h*(subs(fx, x, 0) + subs(fx, x, 1));
i = 1; 
fprintf(1, 'R(%d, 0) = %1.10f\n', i-1, R(i,1));
for i = 2:1:size(R,1) 
    h = h/2;
    R(i,1) = 0.5 * R(i-1,1);
    for j = 0:1: (2^(i-2)-1) 
        R(i,1) = R(i,1) +  h * (subs(fx, x, ((2 * j + 1) * h)));
    end
    fprintf(1, 'R(%d, 0) = %1.10f\n', i-1, R(i,1));
end
for j = 2:1:size(R,1)
    for i = j:1:size(R,1)
        R(i,j) = R(i, j-1) + (R(i, j-1) - R(i-1, j-1))/(4^(j-1) - 1); 
        fprintf(1, 'R(%d, %d) = %1.12f\n', i-1, j-1, R(i,j));
    end
end