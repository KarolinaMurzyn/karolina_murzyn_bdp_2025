SELECT 
    nazwa,
    ST_Area(ST_Buffer(geometria, 5)) AS pole_bufora
FROM obiekty
WHERE GeometryType(geometria) NOT IN ('COMPOUNDCURVE', 'CURVEPOLYGON');

