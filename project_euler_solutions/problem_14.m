%==========================================================================
% The following iterative sequence is defined for the set of positive
% integers:
%
% n → n/2 (n is even)
% n → 3n + 1 (n is odd)
%
% Using the rule above and starting with 13, we generate the following
% sequence:
% 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
%
% It can be seen that this sequence (starting at 13 and finishing at 1)
% contains 10 terms. Although it has not been proved yet (Collatz Problem),
% it is thought that all starting numbers finish at 1.
%
% Which starting number, under one million, produces the longest chain?
%
% NOTE: Once the chain starts the terms are allowed to go above one million.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
number_and_chain_number = zeros(1e6,2);
for idx = 1:1e6
    icount = 1;
    if mod(idx,2) == 0
        number = idx/2;
        icount = icount + 1;
    else
        number = 3*idx + 1;
        icount = icount + 1;
    end
    while number ~= 1
        if mod(number,2) == 0
            number = number/2;
            icount = icount + 1;
        else
            number = 3*number + 1;
            icount = icount + 1;
        end
    end
    number_and_chain_number(idx,1) = idx;
    number_and_chain_number(idx,2) = icount;
end
longest_chain_idx = find(number_and_chain_number(:,2) == max(number_and_chain_number(:,2)));
relevant_number = number_and_chain_number(longest_chain_idx,1);
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',relevant_number)
%--------------------------------------------------------------------------


