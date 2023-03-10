%==========================================================================
% Each new term in the Fibonacci sequence is generated by adding the 
% previous two terms. By starting with 1 and 2, the first 10 terms will be:
%                 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%
% By considering the terms in the Fibonacci sequence whose values do not 
% exceed four million, find the sum of the even-valued terms.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
collection_of_even_fib_numbers = [];
for index = 1:33 % 33 is the last index where the Fibonacci series does not exceed four million
    fn = fibonacci(index);
    if mod(fn,2) == 0
        collection_of_even_fib_numbers = vertcat(collection_of_even_fib_numbers,fn);
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(collection_of_even_fib_numbers))
%--------------------------------------------------------------------------
