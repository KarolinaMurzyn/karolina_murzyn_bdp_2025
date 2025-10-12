SELECT 
    p.imie,
    p.nazwisko,
    pen.kwota AS pensja,
    pr.kwota AS premia,
    (pen.kwota + pr.kwota) AS laczna_placa
FROM 
    ksiegowosc.pracownicy p
JOIN 
    ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN 
    ksiegowosc.pensje pen ON w.id_pensji = pen.id_pensji
JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii
ORDER BY 
    laczna_placa DESC;
