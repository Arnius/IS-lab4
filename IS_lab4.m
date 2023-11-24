close all
clear all
clc

pavadinimas = 'Mokymas2.jpg';
pozymiai_tinklo_mokymui = pozymiai_raidems_atpazinti(pavadinimas, 4);

% Surinkti nuotraukų požymiai
P = cell2mat(pozymiai_tinklo_mokymui);

% Rezultatai, kuriuos siekiama atkartoti
% 4 eye matricos, nes 4 eilutės simbolių, kur vienoje eilėje iš
% 6 simbolių gali būti tik vienas simbolis kaip teisingas atsakymas
T = [eye(6) eye(6) eye(6) eye(6)];

% SBF tipo tinklas su šešiomis bazinėmis funkcijomis kiekvienai raidei
% Pakanka 6 bazinių funkcijų, nes yra tik 6 unikalūs simboliai
tinklas = newrb(P,T,0,1,6);

% Paimama dalis mokymo duomenų tinklo patikrai
P2 = P(:,12:22);
Y2 = sim(tinklas, P2);
[a2, b2] = max(Y2);


raidziu_sk = size(P2,2);

atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
    end
end
% Rezultato pateikimas
disp(atsakymas)
% figure(7), text(0.1,0.5,atsakymas,'FontSize',38)
%% Bandomieji duomenys Nr. 1
pavadinimas = 'Acbfd.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

% Požymiai sudedami į matricą
P2 = cell2mat(pozymiai_patikrai);

% Skaičiuojamas tinklo išėjimas
Y2 = sim(tinklas, P2);

[a2, b2] = max(Y2);
raidziu_sk = size(P2,2);
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
    end
end
% pateikime rezultatà komandiniame lange
disp(atsakymas)
% figure(8), text(0.1,0.5,atsakymas,'FontSize',38), axis off

%% Bandomieji duomenys Nr. 2
pavadinimas = 'Becaf.jpg';
pozymiai_patikrai = pozymiai_raidems_atpazinti(pavadinimas, 1);

P2 = cell2mat(pozymiai_patikrai);

Y2 = sim(tinklas, P2);
[a2, b2] = max(Y2);
raidziu_sk = size(P2,2);
atsakymas = [];
for k = 1:raidziu_sk
    switch b2(k)
        case 1
            atsakymas = [atsakymas, 'A'];
        case 2
            atsakymas = [atsakymas, 'B'];
        case 3
            atsakymas = [atsakymas, 'C'];
        case 4
            atsakymas = [atsakymas, 'D'];
        case 5
            atsakymas = [atsakymas, 'E'];
        case 6
            atsakymas = [atsakymas, 'F'];
    end
end
% pateikime rezultatà komandiniame lange
disp(atsakymas)
% figure(9), text(0.1,0.5,atsakymas,'FontSize',38), axis off

