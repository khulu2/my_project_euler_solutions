%==========================================================================
% The decimal number, 585 = 1001001001 (binary), is palindromic in both 
% bases.
% 
% Find the sum of all numbers, less than one million, which are palindromic
% in base 10 and base 2.
% 
% (Please note that the palindromic number, in either base, may not include
% leading zeros.)
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
palindromic_number = [];
for number = 1:999999
    binary_number = dec2bin(number);
    str_dec_number = num2str(number);
    if all(str_dec_number == fliplr(str_dec_number)) && all(binary_number == fliplr(binary_number))
        palindromic_number = vertcat(palindromic_number,number);
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',sum(palindromic_number))
%--------------------------------------------------------------------------


