function [y_clean, x_clean ] = keepValidPair(y, x)
%keepValidPair remove a row from both array if either of them has nan on
%the row

validXIndex = find (~isnan(x));
y_1 = y(validXIndex,1);
x_1 = x(validXIndex,1);
validYIndex = find(~isnan(y_1));
y_clean = y_1(validYIndex,1);
x_clean = x_1(validYIndex,1);
end

