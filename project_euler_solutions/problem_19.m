%==========================================================================
% You are given the following information, but you may prefer to do some
% research for yourself.
%
%     1 Jan 1900 was a Monday.
%     Thirty days has September,
%     April, June and November.
%     All the rest have thirty-one,
%     Saving February alone,
%     Which has twenty-eight, rain or shine.
%     And on leap years, twenty-nine.
%     A leap year occurs on any year evenly divisible by 4, but not on a
%     century unless it is divisible by 400.
%
% How many Sundays fell on the first of the month during the twentieth
% century (1 Jan 1901 to 31 Dec 2000)?
%==========================================================================
clear; close all;
%--------------------------------------------------------------------------
icount = 1;
D = [];
for iy = 1900:2000
    year = num2str(iy);
    for im = 1:12
        if im < 10
            month = sprintf('0%s',num2str(im));
        else
            month = num2str(im);
        end
        switch im
            case {1 3 5 7 8 10 12}
                M_END = 31;
            case {4 6 9 11}
                M_END = 30;
            otherwise
                %----------------------------------------------------------
                % Check whether this is a leap year or not and then assign
                % the appropriate month end.
                %----------------------------------------------------------
                if leapyear(iy) == 1
                    M_END = 29;
                else
                    M_END = 28;
                end
        end
        for id = 1:M_END
            if id < 10
                day = sprintf('0%s',num2str(id));
            else
                day = num2str(id);
            end

            if icount < 10
                day_count = sprintf('0%s',num2str(icount));
            else
                day_count = num2str(icount);
            end
            if iy > 1900
                if id == 1
                    % collect sundays only
                    if mod(icount,7) == 0
                        date = strcat(year,month,day,day_count);
                        %--------------------------------------------------
                        % fprintf('The date is: %s\n',date)
                        %--------------------------------------------------
                        D = vertcat(D,str2num(date));
                    end
                end
            end
            icount = icount + 1;
        end
    end
end
%--------------------------------------------------------------------------
fprintf('The answer is: %d\n',length(D))
%--------------------------------------------------------------------------


