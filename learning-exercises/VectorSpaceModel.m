%{
    Frances O'Leary, 8/21/2020

    A script used to plot vectors for my Vector
    Space Model Paper.
%}
quiver3(0, 0, 0, 1, 1, 0, 'b');
hold on
quiver3(0, 0, 0, 0, 0, 1, 'b');
quiver3(0, 0, 0, 0, 1, 0, 'b');
quiver3(0, 0, 0, 1, 0, 0, 'b');
quiver3(0, 0, 0, 0, 1, 0, 'b');
quiver3(0, 0, 0, 1, 0, 1, 'r');
xlabel('rocket');
ylabel('summer');
zlabel('JPL');
title("A Simple Vector Space Model");
axis([0 1 0 1 0 1])
axis equal
hold off