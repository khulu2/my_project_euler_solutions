%==========================================================================
% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
multiples_of_3_and_5 = [];
first_natural_number = 1;
while first_natural_number < 1000
    if mod(first_natural_number,3) == 0 || mod(first_natural_number,5) == 0
        multiples_of_3_and_5 = vertcat(multiples_of_3_and_5,first_natural_number);
    end
    first_natural_number = first_natural_number + 1;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(multiples_of_3_and_5))
%--------------------------------------------------------------------------
