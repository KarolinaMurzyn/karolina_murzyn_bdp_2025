WITH new_or_renovated_buildings AS (
    SELECT b2019.*
    FROM t2019_kar_buildings b2019
    LEFT JOIN t2018_kar_buildings b2018
        ON b2019.polygon_id = b2018.polygon_id
    WHERE NOT ST_Equals(b2019.wkb_geometry, b2018.wkb_geometry)
       OR b2018.polygon_id IS NULL
),
new_poi AS (
    SELECT p2019.*
    FROM t2019_kar_poi_table p2019
    LEFT JOIN t2018_kar_poi_table p2018
        ON p2019.poi_id = p2018.poi_id
    WHERE p2018.poi_id IS NULL
)
SELECT p.type AS poi_category,
       COUNT(*) AS poi_count
FROM new_poi p
JOIN new_or_renovated_buildings b
  ON ST_DWithin(p.wkb_geometry, b.wkb_geometry, 500)
GROUP BY p.type
ORDER BY poi_count DESC;