function rect = sprl2rect( sprl )
%SPRL2RECT Converts SA into Rectangular for display.

len = length(sprl);
rad = ceil(log(len)/log(7));
size = ceil(8.06 * (3 ^ rad));
cent = fix(size / 2);
rect = uint8(zeros(size));
start = [cent cent];
for i = 0:(len - 1)
    spl_address = dec2hept(i);
    coord = start + spl_shift(spl_address);
    rect = hypel(rect,coord(1),coord(2),sprl(i+1));
end
