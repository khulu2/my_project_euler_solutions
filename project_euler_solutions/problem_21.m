%==========================================================================
% Let d(n) be defined as the sum of proper divisors of n (numbers less than
% n which divide evenly into n).
%
% If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair
% and each of a and b are called amicable numbers.
%
% For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
% 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
% 2, 4, 71 and 142; so d(284) = 220.
%
% Evaluate the sum of all the amicable numbers under 10000.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
amicable_numbers = [];
number = 1;
while number < 10000
    prime_factors = factor(number); % gets all prime factors
    proper_divisors = [1,prime_factors(1)];
    for idx = prime_factors(2:end)
        proper_divisors = [1;idx]*proper_divisors;
        proper_divisors = unique(proper_divisors(:)');
        proper_divisors(find(proper_divisors == number)) = []; %#ok<FNDSB> % remove the number itself because we want values less than the number
    end
    if length(prime_factors) ~= length(proper_divisors) % removes prime numbers
        sum_divisors1 = sum(proper_divisors);
        new_prime_factors = factor(sum_divisors1); % gets all prime factors
        proper_divisors_new = [1,new_prime_factors(1)];
        for idx = new_prime_factors(2:end)
            proper_divisors_new = [1;idx]*proper_divisors_new;
            proper_divisors_new = unique(proper_divisors_new(:)');
            proper_divisors_new(find(proper_divisors_new == sum_divisors1)) = []; %#ok<FNDSB> % remove the number itself because we want values less than the number
        end
        sum_divisors2 = sum(proper_divisors_new);
        if length(new_prime_factors) ~= length(proper_divisors_new) % removes prime numbers
            if sum_divisors2 == number && sum_divisors2 ~= sum_divisors1
                amicable_numbers = vertcat(amicable_numbers,[sum_divisors1;sum_divisors2]);
                amicable_numbers = unique(amicable_numbers);
            end
        end
    end
    number = number + 1;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(amicable_numbers))
%--------------------------------------------------------------------------


