% Chase Lotito - ECE355L Task 2
% Q1: Write a for loop in MATLAB to calculate the sum of squares for
% numbers 1 to 10
function sum = q1(n)
sum = 0;
for i = 1:(n+1)
    sum = sum + i^2;
    disp(sum + ", ");
end

end