function newton = newton_divided(x,y,T)
    n = size(x,1);
    if n == 1 
        n = size(x,2);
    end
    for i = 1:n
        newton(i,1) = y(i);
    end
    for i = 2:n
        for j = 2:i 
            newton(i,j) = (newton(i,j-1)-newton(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
     f = newton(n,n);
     for i = n-1:-1:1
         f = f*(T-x(i)) + newton(i,i);
     end
    disp(f)
    