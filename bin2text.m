function text = bin2text(binVS)
%% Explaination
% This function convert binary vector or string (binV or binS) got from
% [binV, binS] = text2bin(text); to back in text

% Input: 
%    binVS - Pass any output of [binV, binS] = text2bin(text)
%            either binV or binS
% Output:
%    text - text of class char/string

%% Example - 
% Run following commands ofter saving file in
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
btxt  = reshape(bin,[8, length(binVS)/8])';

if length(class(btxt))== 6
    text  = char(bin2dec(char(btxt+48)))';
else
    text  = char(bin2dec(btxt))';
end