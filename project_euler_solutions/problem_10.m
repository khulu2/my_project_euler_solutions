%==========================================================================
% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
%
% Find the sum of all the primes below two million.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
collection_of_primes = [];
natural_number = 1;
while natural_number < 2e6
    if isprime(natural_number)
        collection_of_primes = vertcat(collection_of_primes,natural_number);
    end
    natural_number = natural_number + 1;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(collection_of_primes))
%--------------------------------------------------------------------------



