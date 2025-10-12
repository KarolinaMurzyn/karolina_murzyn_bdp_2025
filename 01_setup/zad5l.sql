
SELECT 
    pen.stanowisko,
    ROUND(AVG(pen.kwota), 2) AS srednia,
    MIN(pen.kwota) AS min_pensja,
    MAX(pen.kwota) AS max_pensja
FROM 
    ksiegowosc.pensje pen
WHERE 
    pen.stanowisko = 'Kierowca zawodowy'
GROUP BY 
    pen.stanowisko;