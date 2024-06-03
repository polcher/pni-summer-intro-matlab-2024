%%% week_1_lecture_1 code
%%% This code will demonstrate the examples for week 1 lecture 1


%%
num1=10;
num2=20;
num1=num2;

%% understand clear clc close all
clear     %%% it removes all the elements from workspace
clc       %%% it clears the command window
close all %%% it closes all the figures (will beuseful later in the bootcamp)

%% first MATLAB command
disp('Hello world, this is my first MATLAB command :-)')

%% assigning values to variables
a=5;
a+2;    %%% adding a and 2
a;      %%% did the value of a changed?
%%%% How will you change the value of a to 7??

%% input variables from the user 
length=2; %%% length
width=5;  %%% width
height=7; %%% height

%% Calculating volume
volume=length*width*height;
disp(volume)
%%
disp('Calculation is finished')

%% Matlab keywords: You cannot use keywords as variable name
% using while=1 should give you error because while is a keyword
% to get a list of keywords use iskeyword
iskeyword


%%
tic
exp(500)
toc

%%
%%%% some info about Inf, NaN. 
exp(1000)
0/0;
Inf/Inf;

