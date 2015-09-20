function r = findEpchanInput(fileName)
%return the location for input files provided by Epchan
file = strcat ('D:\matlab_data/epchan/', fileName);

if (0 == exist (file,'file'))
    r = '';
else
    r = file;
end

end

