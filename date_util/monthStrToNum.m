function mm = MonthStrToNum(s)
% Given mmm (Oct, Jan) return 02 digit month 10, 01
allMonths = 'JanFebMarAprMayJunJulAugSepOctNovDec';
i = strfind (allMonths,s);
if (0 == numel(i))
    mm = '';
else
    mm = sprintf('%02d', round((i(1)+3)/3));
end
