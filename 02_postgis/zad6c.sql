/* Wypisz nazwy i pola powierzchni wszystkich poligonów w warstwie budynki.
Wyniki posortuj alfabetycznie
*/

WITH ranking AS (
	SELECT	
		b.name,
		b.geometry,
		ST_Perimeter(b.geometry),
		DENSE_RANK() OVER (ORDER BY ST_Area(b.geometry) DESC) AS rank
	FROM buildings b
)
SELECT 
	r.name,
	ST_Perimeter(r.geometry),
	r.rank
FROM ranking r
WHERE r.rank <= 2
ORDER BY r.rank ASC;