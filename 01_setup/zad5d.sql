SELECT
	p.id_pracownika,
	p.imie
FROM 	
	ksiegowosc.pracownicy p
WHERE
	p.imie  LIKE 'J%';
