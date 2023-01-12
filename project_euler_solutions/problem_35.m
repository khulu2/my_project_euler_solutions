%==========================================================================
% The number, 197, is called a circular prime because all rotations of the
% digits: 197, 971, and 719, are themselves prime.
%
% There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37,
% 71, 73, 79, and 97.
%
% How many circular primes are there below one million?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
circular_primes = [];
for number = 2:999999
    value_array = num2str(number) - '0';
    len_value = length(value_array);
    is_circular_prime = 1;
    for idx = 1:len_value
        rotated_num = polyval(circshift(value_array,idx),10);
        if ~isprime(rotated_num)
            % If the rotated number is not prime, set the flag to 0 and break the loop
            is_circular_prime = 0;
            break;
        end
    end
    if is_circular_prime
        circular_primes = vertcat(circular_primes,number);
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',length(circular_primes))
%--------------------------------------------------------------------------


