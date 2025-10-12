
CREATE TABLE pracownicy(
	id_pracownika serial PRIMARY KEY,
	imie VARCHAR(25) NOT NULL,
	nazwisko VARCHAR(30) NOT NULL,
	adres VARCHAR(100) NOT NULL,
	telefon VARCHAR(12) NOT NULL
);


CREATE TABLE godziny(
	id_godziny serial PRIMARY KEY,
	data date NOT NULL,
	liczba_godzin INT NOT NULL,
	id_pracownika INT NOT NULL,
	FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika)
);  


CREATE TABLE pensje(
    id_pensji serial PRIMARY KEY,
    stanowisko VARCHAR(40) NOT NULL,
    kwota DECIMAL(15,2) NOT NULL
);



CREATE TABLE premie(
	id_premii serial PRIMARY KEY,
	rodzaj VARCHAR(40) NOT NULL,
	kwota decimal(15,2) NOT NULL
);




CREATE TABLE wynagrodzenie(
    id_wynagrodzenia serial PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL,
    id_godziny INT NOT NULL,
    id_pensji INT NOT NULL,
    id_premii INT NOT NULL,
    FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika),
    FOREIGN KEY (id_godziny) REFERENCES godziny(id_godziny),
    FOREIGN KEY (id_pensji) REFERENCES pensje(id_pensji),
    FOREIGN KEY (id_premii) REFERENCES premie(id_premii)
);


COMMENT ON TABLE pracownicy IS 'Dane osobowe pracowników.';
COMMENT ON TABLE godziny IS 'Iinformacje o liczbie przepracowanych godzin przez pracowników.';
COMMENT ON TABLE pensje IS 'Dane dotyczące stanowiska i pensji.';
COMMENT ON TABLE premie IS 'Rodzaje i kwoty premii.';
COMMENT ON TABLE wynagrodzenie IS 'Dane o wynagrodzeniu danego pracownika.';