function dec = hept2dec(num)
%HEPT2DEC Converts base 7 number into decimal number.

len = length(num2str(num)) - 1;

dec = 0;
 
for n = len:-1:0
    digit = fix(num / 10 ^ n);
    dec = dec + digit * 7 ^ n;
    num = mod(num, 10 ^ n);
end 