%==========================================================================
% A palindromic number reads the same both ways. The largest palindrome 
% made from the product of two 2-digit numbers is 9009 = 91 × 99.
%
% Find the largest palindrome made from the product of two 3-digit numbers.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
collection_of_palindromes = [];
for product1 = 100:999
    for product2 = 999:-1:100
        full_product = product2*product1;
        if num2str(full_product) == fliplr(num2str(full_product))
            collection_of_palindromes = vertcat(collection_of_palindromes,full_product);
        end
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',max(collection_of_palindromes))
%--------------------------------------------------------------------------