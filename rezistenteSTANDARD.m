function newR = rezistenteSTANDARD(xR,R)
newR = 0;
switch xR
    case 1  % daca ordinul de multiplicitate este Ω
        E24STD=[100 110 120 130 150 160 180 200 220 240 270 300 330 360 390 430 470 510 560 620 680 750 820 910];
    case 2  % daca ordinul de multiplicitate este kΩ
        E24STD=[1.0 1.1 1.2 1.3 1.5 1.6 1.8 2.0 2.2 2.4 2.7 3.0 3.3 3.6 3.9 4.3 4.7 5.1 5.6 6.2 6.8 7.5 8.2 9.1 10 11 12 13 15 16 18 20 22 24 27 30 33 36 39 43 47 51 56 62 68 75 82 91 100 110 120 130 150 160 180 200 220 250 270 300 330 360 390 430 470 510 560 620 680 750 820 910];
    case 3  % daca ordinul de multiplicitate este MΩ
        E24STD=[1.0 1.1	1.2 1.3	1.5 1.6	1.8 2.0	2.2 2.4	2.7 3.0	3.3 3.6	3.9 4.3	4.7 5.1 5.6 6.2	6.8 7.5	8.2 9.1];
    otherwise
end

l=length(E24STD);
flag=0;
preindex = 0;
for i=1:l
    if(R>E24STD(i))
        preindex = i;   % retinem indexul ultimei valoari mai mici decat valoarea introdusa de noi in interfata grafica din standardul E24
    end
    if E24STD(i)==R
        flag=1;        % daca valoarea introdusa de noi se regaseste in lista valorilor standardizate E24 retinem un o variabila flag
        break
    end
end


if flag~=1         % daca valoarea introdusa nu este una standarda E24

    if(preindex == 0)   % daca nu exista val standarda mai mica decat cea introdusa, valoarea finala va fi prima din lista E24
        newR = E24STD(1);
    elseif (preindex == 24) % daca toate val standarde sunt mai mici decat cea introdusa, val finala va fi ultima din lista E24
        newR = E24STD(24);
    elseif (R-E24STD(preindex) < E24STD(preindex+1)-R)  % altfel comparam cea mai apropiata valoare din stanga sau dreapta celei introduse de noi
        newR = E24STD(preindex);
    else
        newR = E24STD(preindex+1);
    end

end

