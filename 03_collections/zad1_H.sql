
SELECT b2019.*
FROM t2019_kar_buildings  b2019
LEFT JOIN t2018_kar_buildings b2018
    ON b2019.polygon_id = b2018.polygon_id
WHERE NOT ST_Equals(b2019.wkb_geometry, b2018.wkb_geometry)
   OR b2018.polygon_id IS NULL;
