%{
 Frances O'Leary Matlab Practice 8/5/2020

 SUBPLOTS - generates and displays some 3D subplots

 USAGE - subplots displays nsome test subplots ;).
%}

[X, Y] = meshgrid(-2 : .2 : 2);
Z = X .* exp(-X.^2 - Y.^2);
t = 0: p / 10 : 2 * pi;
[X, Y, Z] = cylinder(4 * cos(t));
hold on
subplot(2, 2, 1);
mesh(X);
title('X');
subplot(2, 2, 2);
surf(Y);
title('Y');
subplot(2, 2, 3);
surf(Z);
title('Z');
subplot(2, 2, 4);
mesh(X, Y, Z);
title('X, Y, Z');
hold off
