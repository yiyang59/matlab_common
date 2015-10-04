function [z ] = zscore_yy( x )
%zscore_yy, calc ascore for vector x. Ignore nan, the return has nan if the
%input has nan in the same row.
%   Detailed explanation goes here

z = (x - mean (find(~isnan(x)))) / std(find(~isnan(x)));

end

