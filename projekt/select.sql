--laczny dochod pracownik
select *,wynagrodzenie+premia AS dochod from stanowisko order by dochod desc;
-- wyswietlenie danych o pracownikach
select * from pracownik;
--sortowanie pracownikow po adresie
select * from pracownik order by adres;
--wyswietlenie pracownikow z Gdanska
select * from pracownik where adres='Grunwaldzka 5 89-000 Gdasnk';
