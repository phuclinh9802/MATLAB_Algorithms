
% data to calculate rocket velocity with x is the time(s) and y is
% the acceleration.
x = [0,5,10,15,20,25,30,35,40];
y = [40.0,45.25,48.50,51.25,54.35,59.48,61.5,64.3,68.7];
tic
a = 0;
b = 40;
n = 8;
h = (b-a)/n;
s = y(1) + y(9);
for i = 2:2:n
    s = s + 4*y(i);
end

for i = 3:2:n
    s = s + 2*y(i);
end
toc
%velocity at 40s
I = h/3 * s

