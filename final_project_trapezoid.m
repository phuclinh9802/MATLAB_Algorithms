%The data is from website: http://mathforcollege.com/nm/mws/gen/05inp/mws_gen_inp_txt_ndd.
%pdf?fbclid=IwAR1VmtIJd_oXk8i5yOMyETiAHwkHAMBb2H1KMrbQIFdb8HMi0JQmnVRJprk
%Calculate the upper velocity of the rocket using Trapezoidal rule. 
%  x    | 0     |   5      |   10     |   15    |   20     |   25    |  30   | 35     |  40  |-> time(s)
% f(x)  | 40.0  | 45.25    | 48.50    | 51.25   |  54.35   | 59.48   | 61.5  | 64.3   | 68.7 |-> acceleration(m/s^2)
% 

function trap = final_project_trapezoid(x,f) %t is the position in x to calculate the velocity of the rocket.
%Trapezoidal formula: sigma ((f(i) + f(i+1)) * delta(x) / 2)
tic
result = (f(1)+f(9))*(x(9)-x(1))/8 / 2 ;

for i = 2:8 
    result = result + f(i)*(x(9)-x(1))/8;
    plot(result);
end
trap = result;
toc
end

