%{
    Frances O'Leary, 8/24/2020

    A script used to calculate the volume
    and mass of an interesting object for
    which xyz <= 1, -5 <= x <= 5, -5 <= y <= 5,
    and -5 <= z <= 5 using a Monte Carlo Method.
    From Numerical Methods, Greenbaum.
%}

N  = input('Enter the number of sample points: ');

gamma = inline('exp(0.5*z)');

volumeOfBox = 10 * 10 * 10;

vol = 0;
mass = 0;
volsq = 0;
masssq = 0;

for i=1:N,
    x = -5 + 10 * rand;
    y = -5 + 10 * rand;
    z = -5 + 10 * rand;
    if x * y * z <= 1,
        vol = vol + 1;
        mass = mass + gamma(z);
        volsq = volsq + 1;
        masssq = masssq + gamma(z)^2;
    end;
end;

volumeOfObject = (vol / N) * volumeOfBox
volvar = (1 / N) * ((volsq / N) - (vol / N)^2) * volumeOfBox^2;

volstd = sqrt(volvar)

massOfObject = (mass / N) * volumeOfBox
massvar = (1 / N) * ((masssq / N) - (mass / N)^2) * volumeOfBox^2;

massstd = sqrt(massvar)