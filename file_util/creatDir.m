function creatDir(path, yyyy, mm, dd)
%Creat directory path/yyyy/mm/dd if not exists
%

if (~isdir(path))
    mkdir (path);
end

if (nargin > 1)
    yyyyDir = strcat (path, '/', yyyy);
    if (~isdir(yyyyDir))
        mkdir (yyyyDir);
    end
end

if (nargin > 2)
    mmDir = strcat (yyyyDir, '/', mm);
    if (~isdir(mmDir))
        mkdir (mmDir);
    end
end

if (nargin > 3)
    ddDir = strcat (mmDir, '/', dd);
    if (~isdir(ddDir))
        mkdir (ddDir);
    end
end

end

