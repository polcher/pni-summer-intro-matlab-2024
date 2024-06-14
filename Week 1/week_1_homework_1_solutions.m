%%%% This contains the solution for week 1 problem set 1
clear
clc

%% question 1
length=2;
width=5; 
height=7;

volume=length*width*height;
disp(['The volume of the cube is ' num2str(volume) ' and the width of the cube is ' num2str(height)])

%% question 2
clearvars height

%% question 3
% 2_variable_name is invalid because it starts with a number

% persistent is invalid because it is a keyword

% welcometointrotomatlabatprincetonuniversity is valid because it doesn't
% break any naming rules, but it doesn't follow standard guidelines because it is hard to
% read the words without underscores or capitalization

% otherWise is valid since the capitalization makes it not a keyword but it
% doesn't follow standard guidelines because it does share a name with a
% keyword

% while is invalid because it is a keyword

% While is valid since the capitalization makes it not a keyword but it
% doesn't follow standard guidelines because it does share a name with a
% keyword

% hello_world! is invalid because it contains an exclamation point

% welcome_to_intro_to_matlab_at_princeton_university is valid since it
% doesn't break any rules and follows standard matlab conventions since the
% words are separated by underscores and easy to read.

%% question 4
given_matrix=[4:3:27; -30:2:-16; 7:4:38];

% a
disp(['size of the given_matrix is: ' num2str(size(given_matrix))])

%b
given_matrix(2,6)=3;
given_matrix(3,3)=6;
given_matrix(1,7)=8;

% c
given_matrix(2,4:7);

% d
given_matrix(3,:)

% e
given_matrix(:,5)

% f
given_matrix(2:3,5:end);

% g
given_matrix([1 3],[1 3 4 5 7]);

%% question 5
help randi

disp(randi([-3 3],3,5));


%% question 6
given_matrix=[4:3:27; -30:2:-16; 7:4:38];

max(given_matrix,[],2);
min(given_matrix,[],2);
max(given_matrix,[],1);
min(given_matrix,[],1);

%% question 7
% a
rand_int_array=randi(7,1,20);

% b
sort(rand_int_array,'ascend');

% c
sort(rand_int_array,'descend');

%% question 8
unique(rand_int_array);






