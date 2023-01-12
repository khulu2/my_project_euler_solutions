%==========================================================================
% 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
% 
% Find the sum of all numbers which are equal to the sum of the factorial 
% of their digits.
% 
% Note: As 1! = 1 and 2! = 2 are not sums they are not included.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
correct_values = [];
for number = 3:999999
    value_array = num2str(number) - '0';
    fact_value = factorial(value_array);
    if sum(fact_value) == number
        correct_values = vertcat(correct_values,number);
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(correct_values))
%--------------------------------------------------------------------------


