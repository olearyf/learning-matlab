%{
 Frances O'Leary Matlab Practice 8/5/2020

 MYSHPERE - creates and plots a sphere with radius 3. Also calculates
 surface area and volume.

 USAGE - type 'mysphere'
%}

[x, y, z] = sphere;
r = 2;
surf(x * r, y * r, z * r);
axis equal

A = 4 * pi * r^2;
V = (4 / 3) * pi * r^3;


    