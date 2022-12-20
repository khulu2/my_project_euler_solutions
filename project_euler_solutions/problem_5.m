%==========================================================================
% 2520 is the smallest number that can be divided by each of the numbers 
% from 1 to 10 without any remainder.
%
% What is the smallest positive number that is evenly divisible by all of 
% the numbers from 1 to 20?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
collect_numbers = [];
divisors = 1:20;
largest_number = prod(divisors);
for iv = 2520:largest_number
    if mod(iv,divisors) == 0
        collect_numbers = vertcat(collect_numbers,iv);
        if ~isempty(collect_numbers)
            break;
        end
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',min(collect_numbers))
%--------------------------------------------------------------------------