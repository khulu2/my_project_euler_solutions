%==========================================================================
% Starting in the top left corner of a 2×2 grid, and only being able to 
% move to the right and down, there are exactly 6 routes to the bottom 
% right corner.
% 
% [Image can be accessed here: https://projecteuler.net/problem=15]
% 
% How many such routes are there through a 20×20 grid?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
% Define the grid size
n = 20;
 
% To solve this problem, we can use combinatorics to count the number of 
% paths from the top left corner to the bottom right corner.
% 
% Consider the grid as a series of steps, where each step is either a 
% right step or a down step. In order to get from the top left corner to 
% the bottom right corner, we must take 20 right steps and 20 down steps. 
% The order in which we take these steps does not matter, so we just need 
% to find the number of ways to arrange 20 right steps and 20 down steps.
% 
% This problem is an example of a combination, where the order of the steps
% does not matter. Therefore, we can use the combination formula to find 
% the number of ways to arrange the steps:
% 
% C(n, r) = n! / r!(n-r)!
% Use the combination formula to compute the number of paths
paths = factorial(2*n)/(factorial(n)*factorial(n));
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',paths)
%--------------------------------------------------------------------------


