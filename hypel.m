function mat = hypel( mat, row, col, val )
%HYPEL Returns hexagonal pixels
%

mat(row:row + 7, col:col + 4) = val;
mat(row + 1:row + 6, col - 1) = val;
mat(row + 1:row + 6, col + 5) = val;
mat(row + 3:row + 4, col - 2) = val;
mat(row + 3:row + 4, col + 6) = val;