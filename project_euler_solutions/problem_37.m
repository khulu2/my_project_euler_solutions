%==========================================================================
% The number 3797 has an interesting property. Being prime itself, it is
% possible to continuously remove digits from left to right, and remain
% prime at each stage: 3797, 797, 97, and 7. Similarly we can work from
% right to left: 3797, 379, 37, and 3.
%
% Find the sum of the only eleven primes that are both truncatable from
% left to right and right to left.
%
% NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
truncatable_primes = [];
number = 11;
while number > 7
    digits = num2str(number) - '0';

    is_truncatable_prime = 1;

    for i = 1:length(digits)
        truncated_num = polyval(digits(i:end),10);
        if ~isprime(truncated_num)
            is_truncatable_prime = 0;
            break;
        end
    end

    reverse_digits = polyval(fliplr(digits),10);
    reverse_digits = num2str(reverse_digits) - '0';
    if is_truncatable_prime
        for i = 1:length(reverse_digits)
            truncated_num_reverse = reverse_digits(i:end);
            truncated_num = polyval(fliplr(truncated_num_reverse),10);
            if ~isprime(truncated_num)
                is_truncatable_prime = 0;
                break;
            end
        end
    end

    if is_truncatable_prime
        truncatable_primes = vertcat(truncatable_primes,number);
    end
    if length(truncatable_primes) == 11
        break;
    end
    number = number + 1;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(truncatable_primes))
%--------------------------------------------------------------------------


