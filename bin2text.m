function text = bin2text(binVS)
% BIN2TEXT Convert binary vector of {0,1} or string of {'0','1'}s to character vector
% text = text2bin('10000011000010')

% Input: 
%    binVS - Pass any output of [binV, binS] = text2bin(text)
%            either binV or binS
% Output:
%    text - text of class char/string

%% Example - 
% Run these commands ofter saving this file in
% your current directory

%----- Copy and past each line in command window-----
% >>text = 'Hello World';
% >>[binV, binS] = text2bin(text);
% >>text2 = bin2text(binV);
% >>text3 =  bin2text(binS);

%----- Now Check-----  
% >>text
% >>text2
% >>text3

%% For any doubt/feedback feel free to contact
%  Nikesh Bajaj,  www.nikeshbajaj.in
%  bajaj.nikkey@gmail.com
%  University of Genova and Queen Mary University of London
%% Code
if isstring(binVS)
    binVS = char(binVS);
end

btxt  = reshape(binVS,[8, length(binVS)/8])';

if isnumeric(binVS)
    text  = char(bin2dec(char(btxt+48)))';
elseif ischar(binVS)
    text  = char(bin2dec(btxt))';
else
    error("Unhandled data type: %s", class(binVS));
end