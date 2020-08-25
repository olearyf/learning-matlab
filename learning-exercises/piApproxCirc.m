%{
    Frances O'Leary, 8/24/2020

    A script used to approximate pi using
    random points dropped in a square (a simple
    Monte Carlo method). From Numerical Methods, Greenbaum.
%}

N = input('Enter the number of points: ');

numberin = 0;                       % our variable to count the number of points that fall inside the circle
for i=1:N                           % iterate through the inputted number of points and 'drop' that many
    x = 2 * rand - 1;               % pick a random x from -1 to 1
    y = 2 * rand - 1;               % pick a random y from -1 to 1
    if x^2 + y^2 < 1                % determine if (x, y) is in the circle, if it is add on
        numberin = numberin + 1;
    end
end

pio4 = numberin / N;                % take our ratio which should approximate pi/4
piapprox = 4 * pio4                 % multiply by 4 to give an approximation for pi; print to console.

varpio4 = (pio4 - pio4^2) / N;

% variance in approximation of pi/4

varpi = 16*varpio4                 % variance in approximation to pi to a factor of 16

stdpi = sqrt(varpi)                % estimated standard deviation in approximation of pi
