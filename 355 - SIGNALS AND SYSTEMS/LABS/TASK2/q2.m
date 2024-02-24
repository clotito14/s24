% Chase Lotito - ECE355L Task 2
% Q2: Create a function that calculates the factorial of a given 
% positive integer.

% n! = n(n-1)(n-2)...(2)(1) --> while loop this

function ans = factorial(n)
    % initialize output
    ans = 0;

    % loop until n = 0
    while n > 0
        ans = ans * n;
        n = n - 1;
    end
end