-- . Wypisz nazwy i obwody 2 budynków o największej powierzchni. 
SELECT 
    ST_Distance(b.geometry, p.geometry) AS distance
FROM 
    buildings b,
    poi p
WHERE 
    b.name = 'BuildingC'
    AND p.name = 'K';
