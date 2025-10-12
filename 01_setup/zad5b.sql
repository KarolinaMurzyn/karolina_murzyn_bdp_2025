SELECT 
    w.id_pracownika,
    (p.kwota + pr.kwota) AS laczna_placa
FROM 
    ksiegowosc.wynagrodzenie w
JOIN 
    ksiegowosc.pensje p ON w.id_pensji = p.id_pensji
JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii
WHERE 
    (p.kwota + pr.kwota) > 1000;