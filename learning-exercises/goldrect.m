%{
 Frances O'Leary Matlab Practice 8/5/2020

 GOLDRECT - plot the golden rectangle.
%}

phi = (1 + sqrt(5)) / 2;
x = [0 phi phi 0 0];
y = [0 0 1 1 0];
u = [1 1];
v = [0 1];
plot(x, y, 'b', u, v, 'b--')
text(phi / 2, 1.05, '\phi')
text((1 + phi) / 2, -0.05, '\phi - 1')
text(-0.05, 0.5, '1')
text(0.5, -0.05, '1')
axis equal
axis off
set(gcf, 'color', 'white')