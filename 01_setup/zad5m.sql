SELECT 
    SUM(pen.kwota + pr.kwota) AS suma_wynagrodzen
FROM 
    ksiegowosc.wynagrodzenie w
JOIN 
    ksiegowosc.pensje pen ON w.id_pensji = pen.id_pensji
JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii;