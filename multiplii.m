function mult = multiplii(xR)
switch xR
    case 1
        mult=1;
    case 2
        mult=10^3;
    case 3
        mult=10^6;
    otherwise
        mult=0;
end
end