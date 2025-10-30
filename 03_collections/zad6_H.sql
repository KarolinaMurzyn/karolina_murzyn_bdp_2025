
ALTER TABLE t2019_kar_street_node
ALTER COLUMN wkb_geometry TYPE geometry(Point, 3068)
USING ST_Transform(wkb_geometry, 3068);

WITH line AS (
    SELECT ST_Transform(ST_MakeLine(geom ORDER BY id), 3068) AS geom
    FROM input_points
)
SELECT n.*
FROM t2019_kar_street_node n, line
WHERE ST_DWithin(ST_Transform(n.wkb_geometry, 3068), line.geom, 200);