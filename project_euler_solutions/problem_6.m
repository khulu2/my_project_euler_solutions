%==========================================================================
% The sum of the squares of the first ten natural numbers is,
%                   1^2 + 2^2 +...+ 10^2 = 385
% The square of the sum of the first ten natural numbers is,
%                   (1 + 2 +...+ 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the first ten 
% natural numbers and the square of the sum is 3025 - 385 = 2640.
%
% Find the difference between the sum of the squares of the first one 
% hundred natural numbers and the square of the sum.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
natural_numbers = 1:100;
sum_of_squares = sum(natural_numbers.*natural_numbers);
square_of_sums = (sum(natural_numbers))^2;
diff_between_sum_and_square = square_of_sums - sum_of_squares;
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',diff_between_sum_and_square)
%--------------------------------------------------------------------------