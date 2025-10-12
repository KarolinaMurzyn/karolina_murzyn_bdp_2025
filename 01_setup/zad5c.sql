SELECT 
    w.id_pracownika,
    p.kwota,
    pr.kwota AS premia_kwota,
    (p.kwota + COALESCE(pr.kwota, 0)) AS laczna_placa
FROM 
    ksiegowosc.wynagrodzenie w
JOIN 
    ksiegowosc.pensje p ON w.id_pensji = p.id_pensji
LEFT JOIN 
    ksiegowosc.premie pr ON w.id_premii = pr.id_premii
WHERE 
    pr.id_premii IS NULL
    AND (p.kwota + COALESCE(pr.kwota, 0)) > 2000;