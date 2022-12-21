%==========================================================================
% n! means n × (n − 1) × ... × 3 × 2 × 1
% 
% For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
% and the sum of the digits in the number 10! is 
%               3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
% 
% Find the sum of the digits in the number 100!
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
% Calculate the value of 100! and find the sum of its digits
result = my_factorial(100);
total = sum_of_digits(result);
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',total)
%--------------------------------------------------------------------------

%% Functions
%--------------------------------------------------------------------------
function total = sum_of_digits(n)
    % Split n into individual digits and add them up
    n = num2str(n); % convert n to a string
    total = 0;
    for i = 1:length(n)
        total = total + str2double(n(i)); % add each digit to the total
    end
end

function result = my_factorial(n)
    % Calculate n!
    result = 1;
    if n == 0 || n == 1
        result = 1;
    end
    for i = 2:n
        result = result*i;
    end
end
%--------------------------------------------------------------------------
%%



