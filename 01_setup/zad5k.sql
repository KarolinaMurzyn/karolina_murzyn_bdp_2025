
SELECT 
    pen.stanowisko,
    COUNT(p.id_pracownika) AS liczba_pracownikow
FROM 
    ksiegowosc.wynagrodzenie w
JOIN 
    ksiegowosc.pensje pen ON w.id_pensji = pen.id_pensji
JOIN 
    ksiegowosc.pracownicy p ON w.id_pracownika = p.id_pracownika
GROUP BY 
    pen.stanowisko
ORDER BY 
    liczba_pracownikow DESC;
