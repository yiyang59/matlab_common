function [y_clean, index] = keepValidRow(x)
%keepValidRow remove a row if any column in that row is nan. Usage:
%[cleanData, index] = keepValidRow(matrix)
%cleanData = keepValidRow(matrix);
%index are row numbers that are kept

y_clean=[];
index=[];
for i = 1 : size(x)
    keep = 1;
    for j = 1 : size (x,2)
        if (isnan(x(i,j)))
            keep = 0;
            break;
        end
    end
    if (keep == 1)
        y_clean = [y_clean x(i,:)'];
        index = [index i];
    end
end
y_clean=y_clean';
index = index';
end
