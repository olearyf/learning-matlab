%{
 Frances O'Leary Matlab Practice 8/5/2020

 GOLDFRACT - generates and evaluates truncated
 continued fraction approximations to phi.

 USAGE - goldfract(n) displays n terms.
%}

function goldfract(n)

% print continued fraction truncated to n terms
p = '1';
for k = 1:n
    p = ['1 + 1/(' p ')'];
end
p
p = 1;
q = 1;
for k = 1:n
    s = p;
    p = p + q;
    q = s;
end

% print 'ordinary' fraction with single integer numerator and denominator
p = sprintf('%d/%d', p, q)

% normal decimal representation of the above 2 values
format long
p = eval(p)

% difference between p and phi
format short
err = (1 + sqrt(5)) / 2 - p
    