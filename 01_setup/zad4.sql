
INSERT INTO pracownicy(imie, nazwisko, adres, telefon)
VALUES
	('Julia', 'Nowak', 'Jana Matejki 7', '123456789'),
	('Julita', 'Nowak', 'Jana III Sobieskiego 10', '123456879'),
	('Katarzyna', 'Kowalska', 'Jana Matejki 115', '999456789'),
	('Patryk', 'Pik', 'Lesna 9', '120006789'),
	('Jan', 'Piwowarski', 'KEN 67', '1234567098'),
	('Karolina', 'Olszewska', 'Podlesna 99', '123111119'),
	('Marek', 'Nowakowski', 'Sklodowskiej 56', '123457777'),
	('Julian', 'Kot', 'Podolszyny 44', '888856789'),
	('Mariusz', 'Kora', 'Nowa 7', '123666689'),
	('Olaf', 'Banan', 'Karciana  37', '123454545');
SELECT * FROM pracownicy;


INSERT INTO godziny( data, liczba_godzin , id_pracownika)
VALUES
	('2023-10-11', 8, 1),
	('2023-11-11', 9, 2),
	('2022-01-10', 2, 3),
	('2023-05-01', 3, 4),
	('2021-08-05', 9, 5),
	('2023-02-28', 10, 6),
	('2022-05-27', 5, 7),
	('2020-10-12', 6, 8),
	('2023-10-11', 13, 9),
	('2021-03-03', 6, 10);
SELECT * FROM godziny;

INSERT INTO premie(rodzaj, kwota)
VALUES
	('Swiateczna', 200.50),
	('Noworoczna', 500),
	('Noworoczna', 500),
	('Swiateczna', 200.50),
	('Noworoczna', 500),
	('Noworoczna', 500),
	('Wielkanocna', 300),
	('Swiateczna', 200.50),
	('Swiateczna', 200.50),
	('Wielkanocna', 300),
	('Wielkanocna', 300),
	('Wielkanocna', 300);
SELECT * FROM premie;

INSERT INTO pensje( stanowisko, kwota)
VALUES
	(' Nauczyciel', 2500),
	('Piekarz ', 2900),
	(' Lekarz', 3500),
	(' Radiolog', 2900),
	(' Kierowca zawodowy', 2500),
	(' Matemtyk', 3000),
	(' Sprzedawca', 2400),
	('Logopeda ', 2800),
	('Pracownik fizyczny ', 3000),
	(' Stomatolog', 4000);
SELECT * FROM pensje;

INSERT INTO wynagrodzenie(data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES
	('2023-10-11', 1, 1, 1, 1),
	('2023-11-11', 2, 2, 2, 2),
	('2022-01-10', 3, 3, 3, 3),
	('2023-05-01', 4, 4, 4, 4),
	('2021-08-05', 5, 5, 5, 5),
	('2023-02-28', 6, 6, 6, 6),
	('2022-05-27', 7, 7, 7, 7),
	('2020-10-12', 8, 8, 8, 8),
	('2023-10-11', 9, 9, 9, 9),
	('2021-03-03', 10, 10, 10, 10);
SELECT * FROM wynagrodzenie;

