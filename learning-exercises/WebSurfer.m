%{
    Frances O'Leary, 8/24/2020

    A script used to calculate probabilities
    surrounding which page in a network is
    visited using a Monte Carlo Method.
    From Numerical Methods, Greenbaum.
%}

numsims = 5000;

G = [ 0 0 0 1 0; 1 0 0 0 0; 1 0 0 0 0; 0 1 1 0 1; 0 0 1 0 0];
n = length(G);
state = 1;

p = 0.85;
M = zeros(n,n);
for i=1:n;
    for j=1:n;
        M(i,j) = p * G(i,j) / sum(G(i,:)) + (1 - p) / n;
    end
end

pages = zeros(1,n);

fprintf('\n\n');
fprintf('=========================================================\n');
fprintf('Computed Probabilities from %d simulations\n\n', numsims);
fprintf('Simulations  Page 1   Page 2  Page 3  Page 4  Page 5 \n');
fprintf('=========================================================\n');

for i=1:numsims;
    prob = rand;
    if prob < M(state, 1)
        state = 1;
    elseif prob < M(state, 1) + M(state, 2)
        state = 2;
    elseif prob < M(state, 1) + M(state, 2) + M(state, 3)
        state = 3;
    elseif prob < M(state, 1) + M(state, 2) + M(state, 3) + M(state, 4)
        state = 4;
    else
        state = 5;
    end

    pages(state) = pages(state) + 1;

    if ~mod(i, numsims/5)
        fprintf('     %6d  %5.3f    %5.3f    %5.3f   %5.3f   %5.3f \n', i, pages/sum(pages));
    end
end