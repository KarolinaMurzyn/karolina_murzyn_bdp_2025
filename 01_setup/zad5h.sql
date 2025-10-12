SELECT 
    p.imie,
    p.nazwisko,
    g.liczba_godzin
FROM 
    ksiegowosc.pracownicy p
JOIN 
    ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
JOIN 
    ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
LEFT JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii
WHERE 
    g.liczba_godzin > 160 
    AND pr.id_premii IS NULL;