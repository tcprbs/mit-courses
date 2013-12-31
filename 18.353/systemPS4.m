function dxdy = systemPS4(t,y)

% This is the corresponding "system" file for solverPS3.m. 
% This code is called by the "solver" and is provided with some
% information.  It is given the current location of the system (x,dxdt)
% which comes in as a column vector and the current time.  It will return
% the derivative vector for this point, dy.


%  You will need to modify this code in order to do the problem.  Modify 
% the following parameter of 'r' in order to see how the parameter modifies 
% the position of the stable fixed points.

dxdy = zeros(size(y));

a = 2;
b = 1;
c = 1;
d = 3;

% The following is the ODE that you will need to program in.  A different
% system is currently in place and will need to be updated to the system in
% Problem 4.

x = y(1);
y = y(2);

dxdy(1) = a*x - b*x.*y;
dxdy(2) = c*x.*y - d.*y;