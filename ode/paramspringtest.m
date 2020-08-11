%{
Filename: 'paramspringtest.m'

Title: Learning by modeling a nonlinear spring system - now with
parameters.

Purpose: To learn how to solve 2nd order DE's with ode45.

By: Frances O'Leary 8/11/2020

To Use: Type the following: [t,x]=ode45(@(t,x) paramspringtest(t,x,e), [0, 20], [0,1]);
%}

function springsystem = paramspringtest(t, x, e)

epsilon = e;
springsystem = zeros(2, 1);
springsystem(1) = x(2);
springsystem(2) = -x(1) - epsilon * (x(1))^(3);