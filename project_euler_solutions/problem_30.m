%==========================================================================
% Surprisingly there are only three numbers that can be written as the sum 
% of fourth powers of their digits:
% 
%     1634 = 1^4 + 6^4 + 3^4 + 4^4
%     8208 = 8^4 + 2^4 + 0^4 + 8^4
%     9474 = 9^4 + 4^4 + 7^4 + 4^4
% 
% As 1 = 1^4 is not a sum it is not included.
% 
% The sum of these numbers is 1634 + 8208 + 9474 = 19316.
% 
% Find the sum of all the numbers that can be written as the sum of fifth 
% powers of their digits.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
all_values = [];
for number = 2:999999
    value_separated = num2str(number) - '0';
    power_value = value_separated.^5;
    if sum(power_value) == number
        all_values = vertcat(all_values,number);
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(all_values))
%--------------------------------------------------------------------------
