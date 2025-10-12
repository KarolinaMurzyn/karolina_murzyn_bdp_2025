SELECT
	p.id_pracownika,
	p.imie,
	p.nazwisko
FROM 	
	ksiegowosc.pracownicy p
WHERE
	p.imie  LIKE '%a' AND
	p.nazwisko LIKE '%n%';