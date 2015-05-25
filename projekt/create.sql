
CREATE TABLE kwalifikacje
(id INT PRIMARY KEY,
 ukonczone_kursy VARCHAR(25) NOT NULL
);
CREATE TABLE dzial
(id INT PRIMARY KEY,
 nazwa VARCHAR(25) NOT NULL,
 wyposazenie VARCHAR(25) NOT NULL
);
CREATE TABLE stanowisko
(id INT PRIMARY KEY,
 obowiazki VARCHAR(55) NOT NULL,
 wynagrodzenie INT NOT NULL
);
CREATE TABLE pracownik
(id INT PRIMARY KEY,
 id_dzial    INT REFERENCES dzial (id) ON DELETE CASCADE,
 id_kwalifikacje    INT REFERENCES kwalifikacje (id) ON DELETE CASCADE,
 id_stanowisko    INT REFERENCES stanowisko (id) ON DELETE CASCADE,
 imie VARCHAR(25) NOT NULL,
 nazwisko VARCHAR(25) NOT NULL,
 zawod VARCHAR(30) NOT NULL,
 wyksztalcenie VARCHAR(30) NOT NULL,
 stan_cywilny VARCHAR(30) NOT NULL,
 miejsce_zamieszkania VARCHAR(30) NOT NULL,
 data_ur VARCHAR(30) NOT NULL
);
CREATE TABLE stan_kwalifi(
  id_pracownik   INT REFERENCES stanowisko(id),
  id_specjalnosc INT REFERENCES kwalifikacje(id)
);
 