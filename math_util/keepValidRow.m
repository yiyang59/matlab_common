function [y_clean] = keepValidRow(x)
%keepValidRow remove a row if any column in that row is nan

y_clean=[];
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
    end
end
y_clean=y_clean';
end
