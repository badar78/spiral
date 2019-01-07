function sft = spl_shift( address )
%SPL_SHIFT Returns the horizontal and vertical shift as a 2 element
%row vector. The address must be a base-7 number. 

if address == 0
    sft = [0 0];
elseif address == 1
    sft = [8 0];
elseif address == 2
    sft = [4 -7];
elseif address == 3
    sft = [-4 -7];
elseif address == 4
    sft = [-8 0];
elseif address == 5
    sft = [-4 7];
elseif address == 6
    sft = [4 7];
    
elseif mod(address,10) == 0
    len = length(num2str(address));
       
    for n = (len - 1):-1:1
        digit = fix(address / 10 ^ n);
        if digit == 0
            break
        elseif digit ~= 6
            sft = spl_shift(digit * 10 ^ (n - 1)) + ...
                2 * spl_shift((digit + 1) * 10 ^ (n - 1));
        else
            sft = spl_shift(6 * 10 ^(n - 1)) + 2 * ...
                spl_shift(10 ^ (n-1));
        end
        address = mod(address, 10 ^ n);
    end
    
else
    len = length(num2str(address))-1;
    sft = [0 0];
    
    for n = len:-1:0
        digit = fix(address / 10 ^ n);
        if digit ~= 0
            sft = sft + spl_shift(digit * 10 ^ n);
        end
        address = mod(address, 10 ^ n);
    end
end
