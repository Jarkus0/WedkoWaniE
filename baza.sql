DROP DATABASE IF EXISTS wedkowanie

CREATE DATABASE wedkowanie

USE wedkowanie
GO

CREATE TABLE Ryby (
id INTEGER IDENTITY(1,1) PRIMARY KEY,
nazwa TEXT,
wystepowanie TEXT,
styl_zycia INTEGER
)

CREATE TABLE Okres_ochronny (
id INTEGER IDENTITY(1,1),
Ryby_id INTEGER,
od_miesiaca INTEGER,
wymiar_ochronny INTEGER
FOREIGN KEY (Ryby_Id) REFERENCES Ryby(id)
)

CREATE TABLE Lowisko (
id INTEGER IDENTITY(1,1),
Ryby_id INTEGER,
akwen TEXT,
wojewodztwo TEXT,
rodzaj INTEGER
FOREIGN KEY (Ryby_Id) REFERENCES Ryby(id)
)

SELECT id, nazwa, wystepowanie FROM Ryby
WHERE styl_zycia = 1

SELECT Ryby_id, wymiar_ochronny FROM Okres_ochronny
WHERE wymiar_ochronny > 30

SELECT nazwa, akwen, wojewodztwo FROM Ryby
LEFT OUTER JOIN Lowisko ON Lowisko.Ryby_id=Ryby.id;

ALTER TABLE Ryby
ADD dobowy_limit TINYINT
