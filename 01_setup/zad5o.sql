SELECT 
    pen.stanowisko,
    COUNT(pr.id_premii) AS liczba_premii
FROM 
    ksiegowosc.wynagrodzenie w
JOIN 
    ksiegowosc.pensje pen ON w.id_pensji = pen.id_pensji
JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii
GROUP BY 
    pen.stanowisko;