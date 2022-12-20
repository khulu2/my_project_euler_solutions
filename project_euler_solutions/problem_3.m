%==========================================================================
% The prime factors of 13195 are 5, 7, 13 and 29.
%
% What is the largest prime factor of the number 600851475143?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
collection_of_factors = [];
number = 600851475143;
for index = 1:round(sqrt(number))
    if mod(number,index) == 0
        collection_of_factors = vertcat(collection_of_factors,index);
    end
end

idx_prime_true = isprime(collection_of_factors);
idx_prime = find(idx_prime_true == 1);
collection_of_prime_factors = collection_of_factors(idx_prime);
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',max(collection_of_prime_factors))
%--------------------------------------------------------------------------