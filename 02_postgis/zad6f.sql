/* Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w odległości
większej niż 0.5 od budynku BuildingB. */

SELECT 
    ST_Area(
        ST_Difference(
            bC.geometry,
            ST_Buffer(bB.geometry, 0.5)
        )
    ) AS area_outside_05
FROM 
    buildings bC,
    buildings bB
WHERE 
    bC.name = 'BuildingC'
    AND bB.name = 'BuildingB';