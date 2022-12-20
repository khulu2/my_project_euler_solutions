%==========================================================================
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can 
% see that the 6th prime is 13.
% 
% What is the 10 001st prime number?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
number = 2;
all_primes = [];
while number >= 2
    if isprime(number)
        all_primes = vertcat(all_primes,number);
        if length(all_primes) == 10001
            break;
        end
    end
    number = number + 1;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',all_primes(end))
%--------------------------------------------------------------------------