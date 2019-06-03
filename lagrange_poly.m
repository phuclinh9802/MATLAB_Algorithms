function [a] = lagrange_poly(x, x0, y0)
n = size(x0, 2);
L = ones(n,size(x,2));
for i = 1:n
    for j = 1:n
        if (i ~= j) 
            L(i,:) = L(i,:).*(x-x0(j))/(x0(i)- x0(j))
        end
    end
    a = 0;
    
    for i = 1:n
        a = a+y0(i)*L(i,:);
    end
end


