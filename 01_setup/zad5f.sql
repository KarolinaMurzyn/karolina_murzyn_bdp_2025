SELECT 
    p.imie,
    p.nazwisko,
    CASE 
        WHEN g.liczba_godzin > 160 THEN g.liczba_godzin - 160
        ELSE 0
    END AS nadgodziny
FROM 
    ksiegowosc.pracownicy p
JOIN 
    ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika;