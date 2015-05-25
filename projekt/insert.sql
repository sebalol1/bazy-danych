insert into pracownik(id,imie, nazwisko, data_ur, wyksztalcenie, stan_cywilny, adres, zawod)
values ('1','MichaL','WiSniewski','11.12.1980','srednie','wolny','Mokra 5 87-000 Bydgoszcz','technik informatyk');

insert into pracownik(id,imie, nazwisko, data_ur, wyksztalcenie, stan_cywilny, adres, zawod)
values ('2','Martyna','Wojciechowska','26.07.1972','wyzsze','wolny','Grunwaldzka 5 89-000 Gdansk','szwaczka');

insert into pracownik(id,imie, nazwisko, data_ur, wyksztalcenie, stan_cywilny, adres)
values ('3','Wislawa','Udreczona','12.12.1991','Srednie','wolna','Morska 5 88-000 Sopot','technik krawiectwa');

insert into dzial(wyposazenie)
values ('Komputer');

insert into dzial(wyposazenie)
values ('Kater');

insert into dzial(wyposazenie)
values ('Ploter');

insert into stanowisko(wynagrodzenie,premia, obowiazki)
values ('1350','250','obsluga komputera');

insert into stanowisko(wynagrodzenie,premia, obowiazki)
values ('2350','500','obsluga katera');

insert into stanowisko(wynagrodzenie,premia, obowiazki)
values ('3350','750', 'obsluga plotera');

insert into kwalifikacje(ukonczone_kursy)
values('kurs obslugi komputera');

insert into kwalifikacje(ukonczone_kursy)
values('kurs obslugi katera');

insert into kwalifikacje(ukonczone_kursy)
values('kurs obslugi plotera');
