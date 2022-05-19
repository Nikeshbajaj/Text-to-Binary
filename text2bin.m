function [binV, binS] = text2bin(text)
%% TEXT2BIN Convert character vector or string (text) to integer vector of {0,1}s or string of {'0','1'}s.
% 
% Input: 
%    text - Class char/string e.g text = 'Hello World'
% Output:
%    binV - Binary vector of class double
%    binS - Binary Strin  of class char/string

%% Example - 
% Run these commands ofter saving this file in
% your current directory

%------ Copy and past each line in command window-----
% >> text = 'Hello World';
% >> [binV, binS] = text2bin(text);


%------Now Check----------------------------------------------  
% >>binV
% binV =
%  Columns 1 through 13
%     0     1     0     0     1     0     0     0     0     1 ..
% >>binS
% binS =
%  0100100001100101011011000110110001 ....

% You can directly write as
% >>[binV, binS] = text2bin('Hello World')


%% For any doubt/feedback feel free to contact
%  Nikesh Bajaj,  www.nikeshbajaj.in
%  bajaj.nikkey@gmail.com
%  University of Genova and Queen Mary University of London
%% Code
if isstring(text)
    text = char(strjoin(text));
end

binS = dec2bin(text,8);
binS = binS';
binS = binS(:)';
binV = uint8(binS-48);
end