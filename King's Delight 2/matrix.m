function [top_left,top_right,bottom_left,bottom_right] = matrix(A)
%   This function returns the four corners of the matrix A
[row, col] = size(A);
top_left = A(row,col)
top_right = A(row,1)
bottom_left = A(1,col)
bottom_right = A(1,1)
end

