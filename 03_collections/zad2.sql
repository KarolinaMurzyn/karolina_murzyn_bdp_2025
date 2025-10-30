SELECT 
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(o3.geometria, o4.geometria),
            5
        )
    ) AS pole_bufora
FROM obiekty o3, obiekty o4
WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4';
