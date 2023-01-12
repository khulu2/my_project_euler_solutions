%==========================================================================
% Starting with the number 1 and moving to the right in a clockwise 
% direction a 5 by 5 spiral is formed as follows:
% 
%                           21 22 23 24 25
%                           20  7  8  9 10
%                           19  6  1  2 11
%                           18  5  4  3 12
%                           17 16 15 14 13
% 
% It can be verified that the sum of the numbers on the diagonals is 101.
% 
% What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral 
% formed in the same way?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
n = 1001; 
A = zeros(n); 

x = 1; y = 1; dx = 0; dy = 1;

for i = n^2:-1:1
    A(y,x) = i; 
    if x + dx > n || x + dx < 1 || y + dy > n || y + dy < 1 || A(y+dy,x+dx) ~= 0
        t = dx; dx = dy; dy = -t;           % change direction
    end
    x = x + dx; y = y + dy; 
end
%--------------------------------------------------------------------------
A = fliplr(A');         % flip the matrix to get the original spiral
trace_1 = trace(A);
trace_2 = trace(fliplr(A));
answer = (trace_1 + trace_2) - 1;            % because one repeats
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',answer)
%--------------------------------------------------------------------------
