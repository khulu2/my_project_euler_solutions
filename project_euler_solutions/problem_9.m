%==========================================================================
% A Pythagorean triplet is a set of three natural numbers, a < b < c, for
% which,
%                           a^2 + b^2 = c^2
%
% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
%
% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
% Find the product abc.

%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
pythagorean_triplet = [];
%--------------------------------------------------------------------------
% a, b, c, can have a maximum value of 998 because their sum has to be 1000
%--------------------------------------------------------------------------
for a = 1:998
    for b  = 1:998
        for c = 1:998
            if a^2 + b^2 == c^2 && a + b + c == 1000
                pythagorean_triplet = [a,b,c];
                %----------------------------------------------------------
                fprintf('The answer is: %d\n',prod(pythagorean_triplet))
                %----------------------------------------------------------
                return;
            end
        end
    end
end




