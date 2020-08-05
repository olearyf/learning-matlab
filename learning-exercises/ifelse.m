%{
 Frances O'Leary Matlab Practice 8/5/2020

 IFELSE - test for if - else statments

 USAGE - type 'ifelse'
%}

num = randi(100)
if num < 34
    sz = 'low'
elseif num < 67
    sz = 'medium'
else
    sz = 'high'
end