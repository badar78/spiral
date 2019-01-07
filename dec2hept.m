function hept = dec2hept(num)
%DEC2HEPT Converts decimal number into a base 7 number.

hept = 0;
temp = fix(num/7);
r = mod(num,7);
exp = 0;

while temp ~= 0;
    hept = hept + r * 10 ^ exp;
    r = mod(temp,7);
    exp = exp + 1;
    temp = fix(temp/7);
end

hept = hept + r * 10 ^ exp;
    
    