%==========================================================================
% The fraction 49/98 is a curious fraction, as an inexperienced 
% mathematician in attempting to simplify it may incorrectly believe that 
% 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.
% 
% We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
% 
% There are exactly four non-trivial examples of this type of fraction, 
% less than one in value, and containing two digits in the numerator and 
% denominator.
% 
% If the product of these four fractions is given in its lowest common 
% terms, find the value of the denominator.
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
product_numerator = 1;
product_denominator = 1;

for numerator = 1:9
    for denominator = numerator+1:9
        for common_digit = 1:9
            if numerator ~= common_digit && denominator ~= common_digit
                numerator1 = str2num(strcat(num2str(numerator),num2str(common_digit)));
                denominator1 = str2num(strcat(num2str(common_digit),num2str(denominator)));
                if numerator1/denominator1 == numerator/denominator
                    product_numerator = product_numerator * numerator1;
                    product_denominator = product_denominator * denominator1;
                end
            end
        end
    end
end
% reduce the fraction to lowest terms
gcd_value = gcd(product_numerator,product_denominator);
while gcd_value ~= 1
    product_numerator = product_numerator/gcd_value;
    product_denominator = product_denominator/gcd_value;
    gcd_value = gcd(product_numerator,product_denominator);
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',product_denominator)
%--------------------------------------------------------------------------


