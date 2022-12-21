%==========================================================================
% Using names.txt (right click and 'Save Link/Target As...'), a 46K text 
% file containing over five-thousand first names, begin by sorting it into 
% alphabetical order. Then working out the alphabetical value for each 
% name, multiply this value by its alphabetical position in the list to 
% obtain a name score.
% 
% For example, when the list is sorted into alphabetical order, COLIN, 
% which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
% So, COLIN would obtain a score of 938 × 53 = 49714.
% 
% What is the total of all the name scores in the file?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
fid = fopen('p022_names.txt');
names = textscan(fid,'%s','delimiter',',');
fclose(fid);
%--------------------------------------------------------------------------
names = sort(names{1});
total = 0;
for ipos = 1:length(names)
    name = names{ipos};
    score = 0;
    % Loop through the characters in the name and add their ASCII values
    for j = 2:length(name)-1 % we start at 2 and end at length-1 because we want to exclude the quote marks "
        score = score + (double(name(j)) - 64);
    end
    % Multiply the score by the name's position in the list
    total = total + score*ipos;
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',total)
%--------------------------------------------------------------------------

