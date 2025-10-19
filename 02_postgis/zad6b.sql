-- b. Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego
-- budynek o nazwie BuildingA. 

SELECT
	ST_AsText(b.geometry),
	ST_Area(b.geometry),
	ST_Perimeter(b.geometry)
FROM buildings b
WHERE  b.name ILIKE 'buildinga';