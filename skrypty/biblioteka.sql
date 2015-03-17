SET client_encoding='utf-8';


CREATE TABLE czytelnik
(
    nr_karty            int           PRIMARY KEY,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null,
    
);

CREATE TABLE egzemplarz
(
    numer inw           int   PRIMARY KEY,
);

CREATE TABLE wydanie
{
  id                    int   PRIMARY KEY,
  rok                   int   not null,
  cena                  int   not null,
  wydawnictwo       varchar(32) not null,
};
CREATE TABLE książka
{
  kod                   int   PRIMARY KEY,
  tytuł             varchar(32) not null,
};
CREATE TABLE autor
{ 
  imie  varchar(32) not null,
  nazwisko  varchar(32) not null,
};
