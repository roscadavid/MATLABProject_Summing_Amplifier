function Grafice_semnale(frecventa1,frecventa2,frecventa3,frecventa4,N,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn)
multn = multiplii(xRn);
mult1 = multiplii(xR1);
mult2 = multiplii(xR2);
mult3 = multiplii(xR3);
mult4 = multiplii(xR4);

newRn= rezistenteSTANDARD(xRn,Rn);
if newRn ~= 0
    Rn = newRn;
    close;
    Proiect_interfata_SumatorAO(frecventa1,frecventa2,frecventa3,frecventa4,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn);
end

newR1 = rezistenteSTANDARD(xR1,R1);
if newR1 ~= 0       % daca valoarea rezistentei nu e standarda
    R1 = newR1;     % rezistenta va fi actualizata automat
    close;
    Proiect_interfata_SumatorAO(frecventa1,frecventa2,frecventa3,frecventa4,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn);
end
newR2 = rezistenteSTANDARD(xR2,R2);
if newR2 ~= 0       % daca valoarea rezistentei nu e standarda
     R2= newR2;     % rezistenta va fi actualizata automat
    close;
    Proiect_interfata_SumatorAO(frecventa1,frecventa2,frecventa3,frecventa4,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn);
end
newR3 = rezistenteSTANDARD(xR3,R3);
if newR3 ~= 0       % daca valoarea rezistentei nu e standarda
    R3 = newR3;     % rezistenta va fi actualizata automat
    close;
    Proiect_interfata_SumatorAO(frecventa1,frecventa2,frecventa3,frecventa4,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn);
end
newR4 = rezistenteSTANDARD(xR4,R4);
if newR4 ~= 0       % daca valoarea rezistentei nu e standarda
    R4 = newR4;     % rezistenta va fi actualizata automat
    close;
    Proiect_interfata_SumatorAO(frecventa1,frecventa2,frecventa3,frecventa4,ValMed1,ValMed2,ValMed3,ValMed4,Amplitudine1,Amplitudine2,Amplitudine3,Amplitudine4,R1,R2,R3,R4,Rn,Valimentare,Semnal1,Semnal2,Semnal3,Semnal4,xR1,xR2,xR3,xR4,xRn);
end
T1 = 1/frecventa1;
T2 = 1/frecventa2;
T3 = 1/frecventa3;
T4 = 1/frecventa4;
T= max([T1,T2,T3,T4]);
t=0:T/100:2*T*N;
switch Semnal1
    case 1
        if ValMed1 > Valimentare
            ValMed1 = Valimentare;
        elseif ValMed1 < - Valimentare
            ValMed1 = -Valimentare;
        end

        s1 = ValMed1;
        % semnal continuu
    case 2
        s1 = ValMed1 + Amplitudine1*sin(2*pi*t/T1);    % semnal sinusoidal
    case 3
        s1 = ValMed1 + Amplitudine1*square(2*pi*t/T1,50);  % semnal dreptunghiular
    case 4
        s1 = ValMed1 + Amplitudine1*sawtooth(2*pi*t/T1+pi/2,0.5);  % semnal triunghiular
    case 5
        s1= ValMed1 + Amplitudine1*sawtooth(2*pi*t/T1+pi/2,0);  % semnal dinte de fier
end

switch Semnal2
    case 1
        if ValMed2 > Valimentare
            ValMed2 = Valimentare;
        elseif ValMed2 < - Valimentare
            ValMed2 = -Valimentare;
        end

        s2 = ValMed2;

    case 2
        s2 = ValMed2 + Amplitudine2*sin(2*pi*t/T2);
    case 3
        s2 = ValMed2 + Amplitudine2*square(2*pi*t/T2,50);
    case 4
        s2 = ValMed2 + Amplitudine2*sawtooth(2*pi*t/T2+pi/2,0.5);
    case 5
        s2=ValMed2 + Amplitudine2*sawtooth(2*pi*t/T2+pi/2,0);  
end

switch Semnal3
    case 1
        if ValMed3 > Valimentare
            ValMed3 = Valimentare;
        elseif ValMed3 < - Valimentare
            ValMed3 = -Valimentare;
        end

        s3 = ValMed3;

    case 2
        s3 = ValMed3 + Amplitudine3*sin(2*pi*t/T3);
    case 3
        s3 = ValMed3 + Amplitudine3*square(2*pi*t/T3,50);
    case 4
        s3 = ValMed3 + Amplitudine3*sawtooth(2*pi*t/T3+pi/2,0.5);
    case 5
        s3=ValMed3 + Amplitudine3*sawtooth(2*pi*t/T3+pi/2,0);  
end
switch Semnal4
    case 1
        if ValMed4 > Valimentare
            ValMed4 = Valimentare;
        elseif ValMed4 < - Valimentare
            ValMed4 = -Valimentare;
        end

        s4 = ValMed4;

    case 2
        s4 = ValMed4 + Amplitudine4*sin(2*pi*t/T4);
    case 3
        s4 = ValMed4 + Amplitudine4*square(2*pi*t/T4,50);
    case 4
        s4 = ValMed4 + Amplitudine4*sawtooth(2*pi*t/T4+pi/2,0.5);
    case 5
        s4=ValMed4 + Amplitudine4*sawtooth(2*pi*t/T4+pi/2,0);  
end
% Limitarea valorilor semnalelor de intrare si iesire la valoarea de
% alimentare

Vmax1 = 0;
Vmax2 = 0;
Vmax3 = 0;
Vmax4 = 0;
VmaxOut = 0;

for i = 1:length(s1)
    if s1(i) > Valimentare
        s1(i)  = Valimentare;
    elseif s1(i)<-Valimentare
        s1(i) = -Valimentare;
    end

    if abs(s1(i))>Vmax1
        Vmax1 = abs(s1(i));
    end

end

for i = 1:length(s2)
    if s2(i) > Valimentare
        s2(i)  = Valimentare;
    elseif s2(i)<-Valimentare
        s2(i) = -Valimentare;
    end

    if abs(s2(i))>Vmax2
        Vmax2 = abs(s2(i));
    end

end

for i = 1:length(s3)
    if s3(i) > Valimentare
        s3(i)  = Valimentare;
    elseif s3(i)<-Valimentare
        s3(i) = -Valimentare;
    end

    if abs(s3(i))>Vmax3
        Vmax3 = abs(s3(i));
    end
end

for i = 1:length(s4)
    if s4(i) > Valimentare
        s4(i)  = Valimentare;
    elseif s4(i)<-Valimentare
        s4(i) = -Valimentare;
    end

    if abs(s4(i))>Vmax4
        Vmax4 = abs(s4(i));
    end
end


sOut = -Rn*multn*(s1./(R1*mult1) + s2./(R2*mult2) +s3./(R3*mult3)+s4./(R4*mult4));   % expresia semnalului de iesire


for i = 1:length(sOut)
    if sOut(i) > Valimentare
        sOut(i)  = Valimentare;
    elseif sOut(i)<-Valimentare
        sOut(i) = -Valimentare;
    end

    if abs(sOut(i))>VmaxOut
        VmaxOut = abs(sOut(i));
    end
end
% .......................Reprezentarea grafica a semnalelor de
% intrare/iesire pe un singur plot
 subplot(313);
if (Semnal1 ==2 || Semnal1 ==3 ||Semnal1==4|| Semnal1==5)
    plot(t,s1,'r');
    hold on;
else
    yline(ValMed1,'r','LineWidth',3);       % in cazul in care semnalele introduse sunt doar de tip continuu, reprezentarea grafica difera.
    hold on;
end

if (Semnal2 ==2 || Semnal2 ==3 ||Semnal2==4|| Semnal2==5)
    plot(t,s2,'g');
    hold on;
else
    yline(ValMed2,'g','LineWidth',3);
    hold on;
end

if (Semnal3 ==2 || Semnal3 ==3 ||Semnal3==4|| Semnal3==5)
    plot(t,s3,'k');
    hold on;
else
    yline(ValMed3,'k','LineWidth',3);
    hold on;
end
if (Semnal4==2 || Semnal4 ==3 ||Semnal4==4|| Semnal4==5)
    plot(t,s4,'m');
    hold on;
else
    yline(ValMed4,'m','LineWidth',3);
    hold on;
end
if(Semnal1 == 1 && Semnal2 == 1 && Semnal3 ==1 && Semnal4)
    valMedOut = -((Rn*multn)*ValMed1/(R1*mult1) + (Rn*multn)*ValMed2/(R2*mult2) + (Rn*multn)*ValMed3/(R3*mult3)+Rn*multn)*ValMed4/(R4*mult4);
    if valMedOut > Valimentare
        valMedOut = Valimentare;
    elseif valMedOut < -Valimentare
        valMedOut =  -Valimentare;
    end

    yline(valMedOut,'b','LineWidth',2);
    hold on;
    grid on;
else
    plot(t,sOut,'b','LineWidth',2);
    hold on;
    grid on;
end
title('Semnale Circuit Sumator','FontAngle','italic','FontSize',15)
xlabel('timp[s]','FontWeight','bold','FontSize',13);
ylabel('Amplitudine[V]','FontWeight','bold','FontSize',13);
legend('v1','v2','v3','v4','vout');


