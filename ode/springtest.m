%{
Filename: 'springtest.m'

Title: Learning by modeling a nonlinear spring system.

Purpose: To learn how to solve 2nd order DE's with ode45.

By: Frances O'Leary 8/2/2020

To Use: Type the following: [t,x]=ode45('springtest', [0, 20], [0,1]);
%}

function springsystem = springtest(t, x)

epsilon = -0.4;
springsystem = zeros(2, 1);
springsystem(1) = x(2);
springsystem(2) = -x(1) - epsilon * (x(1))^(3);