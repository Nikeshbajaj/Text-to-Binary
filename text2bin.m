function [binV, binS] = text2bin(text)
%% Explaination
% This function convert text into binary and return two variable
% One in vector -binV other in string binS

% Input: 
%    text - Class char/string e.g text = 'Hello World'
% Output:
%    binV - Binary vector of class double
%    binS - Binary Strin  of class char/string

%% Example - 
% Run following commands ofter saving file in
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
binS = dec2bin(text,8);
binS = binS';
binS = binS(:)';
binV = binS-48;
end