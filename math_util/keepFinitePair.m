function [y_clean, x_clean ] = keepFinitePair(y, x)
%keepPositivePair remove a row from both array if x has non-positive value.

validXIndex = find (~isinf(x));
y_clean = y(validXIndex,1);
x_clean = x(validXIndex,1);
end
