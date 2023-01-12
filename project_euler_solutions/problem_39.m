%==========================================================================
% If p is the perimeter of a right angle triangle with integral length 
% sides, {a,b,c}, there are exactly three solutions for p = 120.
% 
% {20,48,52}, {24,45,51}, {30,40,50}
% 
% For which value of p ≤ 1000, is the number of solutions maximised?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
perimeter = [];
for a = 1:998
    for b = a:998
        for c = 1:998
            if a^2 + b^2 == c^2 && a+b+c <= 1000
                perimeter = vertcat(perimeter,[a,b,c,a+b+c]);
            end
        end
    end
end
[M,F] = mode(perimeter(:,end));
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',M)
%--------------------------------------------------------------------------


