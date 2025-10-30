CREATE TABLE t2019_kar_bridges AS
SELECT 
    ST_Intersection(
        ST_Transform(r.wkb_geometry, 3068),
        ST_Transform(w.wkb_geometry, 3068)
    ) AS geom
FROM t2019_kar_railways r
JOIN t2019_kar_water_lines w
  ON ST_Intersects(
        ST_Transform(r.wkb_geometry, 3068),
        ST_Transform(w.wkb_geometry, 3068)
     )
WHERE GeometryType(
        ST_Intersection(
            ST_Transform(r.wkb_geometry, 3068),
            ST_Transform(w.wkb_geometry, 3068)
        )
      ) = 'POINT';


SELECT COUNT(*) AS liczba_mostow FROM t2019_kar_bridges;
