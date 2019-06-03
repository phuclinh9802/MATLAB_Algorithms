function tri = spatialInt(x,y,w) 
%Input: vertices (x,y)
%Output: 13 triangular interpolation functions 
matr = [1 x(1) y(1); 1 x(2) y(2); 1 x(3) y(3)];
d = 0.5*det(matr);
    %n1 = (x*(y(1)-y(2)) - y*(x(1)-x(2)) + (x(1)*y(2)+x(2)*y(1)))/(2*d);
    %n2 = (x*(y(2)-y(0)) - y*(x(2)-x(0)) + (x(2)*y(0)-x(0)*y(2)))/(2*d);
    %n3 = (x*(y(0)-y(1)) - y*(x(0)-x(1)) + (x(0)*y(1)-x(1)*y(0)))/(2*d);
    x1 = (y(2)-y(3))/(2*d);
    x2 = (y(3)-y(1))/(2*d);
    x3 = (y(1)-y(2))/(2*d);
    y1 = (x(2)-x(3))/(2*d);
    y2 = (x(3)-x(1))/(2*d);
    y3 = (x(1)-x(2))/(2*d);
    c1 = (x(2)*y(3)-x(3)*y(2))/(2*d);
    c2 = (x(3)*y(1)-x(1)*y(3))/(2*d);
    c3 = (x(1)*y(2)-x(2)*y(1))/(2*d);
    a = x1*w(1)+x2*w(2)+x3*w(3);
    a = sprintf('%.1f',a);
    b = -y1*w(1)-y2*w(2)-y3*w(3);
    b = sprintf('%.1f',b);
    c = c1*w(1)+c2*w(2)+c3*w(3);
    c = sprintf('%.1f',c);
    tri = a + "x + " + b + "y +" + c;
    disp(tri);
end