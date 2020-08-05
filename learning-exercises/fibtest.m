%{
 Frances O'Leary Matlab Practice 8/5/2020

 FIBTEST - Calculates the 1st 100 terms of the Fibonacci sequence and shows
 the first 10.

 USAGE - type 'fibtest'
%}

N = 100;
f(1) = 1;
f(2) = 1;

for n = 3:N
    f(n) = f(n - 1) + f(n - 2);
end
f(1:10)