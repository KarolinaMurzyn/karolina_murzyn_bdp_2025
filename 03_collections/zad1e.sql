
INSERT INTO obiekty (nazwa, geometria)
VALUES (
    'obiekt5',
    ST_GeomFromText(
        'LINESTRING Z (30 30 59, 38 32 234)'
    )
);
