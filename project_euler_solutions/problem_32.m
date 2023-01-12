%==========================================================================
% In the United Kingdom the currency is made up of pound (£) and pence (p).
% There are eight coins in general circulation:
% 
%          1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
% 
% It is possible to make £2 in the following way:
% 
%              1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
% 
% How many different ways can £2 be made using any number of coins?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------

% define the target value
target_value = 9;

% initialize the sum of products to 0
sum_products = 0;

% call the recursive function
find_products(1:target_value, 0, 0, 0);

% print the result
sum_products

% define a recursive function to find the products that can be written as 1 through 9 pandigital numbers
function find_products(digits, multiplicand, multiplier, product)
    global target_value;
    global sum_products;

    if length(digits) == 0
        if multiplicand * multiplier == product
            sum_products = sum_products + product;
        end
        return;
    end

    for i = 1:length(digits)
        new_digits = digits;
        new_digits(i) = [];
        find_products(new_digits, multiplicand * 10 + digits(i), multiplier, product);
        find_products(new_digits, multiplicand, multiplier * 10 + digits(i), product);
        find_products(new_digits, multiplicand, multiplier, product * 10 + digits(i));
    end
end




