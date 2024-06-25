%% Problem 1
% Create random matrices
matrix_1 = randi(10, 3, 3); % the first input can be any maximum you want
matrix_2 = randi(8, 3, 3); 

% Concatenate them horizontally
horiz_concat = cat(2, matrix_1, matrix_2);
% or
horiz_concat = horzcat(matrix_1, matrix_2);
% or
horiz_concat = [matrix_1 matrix_2];

% Concatenate them vertically
vert_concat = cat(1, matrix_1, matrix_2);
% or
vert_concat = vertcat(matrix_1, matrix_2);
% or
vert_concat = [matrix_1; matrix_2];

%% Problem 2
% Test
[surf_area, vol]= surfarea_and_volume(4)

%% Problem 3
% Generate random array
rand_array = randi(7, 1, 6);

% Test
top_3_array = max_3(rand_array)

%% Problem 4
% Generate random arrays
rand_array2 = randi(10, 1, 2);
rand_array3 = randi(10, 1, 3);

% Test
top_3_array2 = max_3_better(rand_array2)
top_3_array3 = max_3_better(rand_array3)

%% Problem 5
% Generate random arrays
rand_array1 = rand(1, 7);
rand_array2 = rand(1, 7);

% Test
top_3_div = max_3_div(rand_array1, rand_array2)

%% Problem 6
% Test
exercise_6(4, 5)
exercise_6(5, 4)
exercise_6(5, 5)

%% Problem 7
% Generate random array
rand_array = rand(1, 8);

% Write code
for i=1:length(rand_array)
    element = rand_array(i);
    if element == 4
        disp("I am 4")
    elseif mod(element, 4) == 0
        disp("I am divisible by 4")
    else
        disp("I am not divisible by 4")
    end
end

%% Problem 8
% Define array
angles = [0, 23, 90, -45, 175, 265, 801, -30, 360];

% Run function
rad_angles = deg_to_rad(angles)



%% All function definitions
% Problem 2
function [surf_area, vol] = surfarea_and_volume(radius)
surf_area = 4 * pi * radius^2;
vol = (4/3) * pi * radius^3;
end

% Problem 3
function top_3_array = max_3(array)
unique_array = unique(array);
sorted_unique_array = sort(unique_array, 'descend');
top_3_array = sorted_unique_array(1:3);
end

% Problem 4
function top_3_array = max_3_better(array)
if length(array) < 3
    top_3_array = [];
    disp("Error: your array is too small")
else
    unique_array = unique(array);
    sorted_unique_array = sort(unique_array, 'descend');
    top_3_array = sorted_unique_array(1:3);
end
end

% Problem 5
function top_3_div = max_3_div(array1, array2)
elem_div = array1 ./ array2;
top_3_div = max_3_better(elem_div);
end

% Problem 6
function exercise_6(int1, int2)
if int1 > int2
    disp("i need a new computer")
elseif int1 < int2
    disp("i like panera bread's creamy tomato soup")
else
    disp("my favorite fish is a shark")
end
end

% Problem 8
function rad_array = deg_to_rad(deg_array)

rad_array = [];
for i= 1:length(deg_array)
    deg = deg_array(i);
    rad = deg * pi / 180;
    rad_array = [rad_array rad];
end

%%% or

rad_array = deg_array * pi / 180;

end
