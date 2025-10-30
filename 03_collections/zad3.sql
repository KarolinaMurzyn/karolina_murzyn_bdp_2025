SELECT ST_IsClosed(geometria)
FROM obiekty
WHERE nazwa = 'obiekt4';

UPDATE obiekty
SET geometria = ST_AddPoint(geometria, ST_StartPoint(geometria))
WHERE nazwa = 'obiekt4';

UPDATE obiekty
SET geometria = ST_MakePolygon(geometria)
WHERE nazwa = 'obiekt4';
