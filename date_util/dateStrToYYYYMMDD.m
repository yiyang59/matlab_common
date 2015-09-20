function [yyyy,mm,dd] = dateStrToYYYYMMDD(s)
% Given dd-mmm-yyyy, return numerical yyyy mm dd
dd = s(1:2);
yyyy = s(8:11);
mm = monthStrToNum (s(4:6));
