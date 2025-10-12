
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT w.id_pracownika
    FROM ksiegowosc.wynagrodzenie w
    JOIN ksiegowosc.pensje pen ON w.id_pensji = pen.id_pensji
    WHERE pen.kwota < 1200
);

