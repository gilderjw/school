function [ lol ] = invMatrix( M, md )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    [~, mul, ~] = gcd(round(det(M)), md);
    
    xpose = transpose(M);
    
    for i = 1:4
        for j = 1:4
            if i == j
                continue
            else
                xpose(i, j) = -xpose(i,j);
            end
        end
    end
    
    lol = round(mod(inv(M)*mul*det(M), md));
   
end


mat = invMatrix(M, 26)

int2text(mod((text2int('hrys'))*mat, 26))

int2text(mod((text2int('gnco'))*mat, 26))

int2text(mod((text2int('vehl'))*mat, 26))

int2text(mod((text2int('npnq'))*mat, 26))

int2text(mod((text2int('jrlq'))*mat, 26))