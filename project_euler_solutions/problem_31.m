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
coins = [1, 2, 5, 10, 20, 50, 100, 200];
amount = 200;
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',coin_ways(amount,coins))
%--------------------------------------------------------------------------
%%
function ways = coin_ways(amount,coins)
%COIN_WAYS Returns the number of ways to make the specified amount using 
% the given coins.
%   amount: The amount to make (in pence)
%   coins: A list of the available coins (in pence)
%   returns: The number of ways to make the specified amount using the given coins

if amount == 0
    ways = 1; % base case: we can always make 0 pence using no coins
elseif amount < 0 || isempty(coins)
    ways = 0; % base case: we cannot make a negative amount or use an empty list of coins
else
    ways = coin_ways(amount,coins(2:end)) + coin_ways(amount - coins(1),coins);
end

end

