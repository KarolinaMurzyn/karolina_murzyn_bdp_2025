
SELECT COUNT(DISTINCT p.poi_id) AS liczba_sklepow
FROM t2019_kar_poi_table p
JOIN t2019_kar_land_use_a l
  ON ST_DWithin(
       ST_Transform(p.wkb_geometry, 3068),  
       ST_Transform(l.wkb_geometry, 3068),   
       300                                   
     )
WHERE p.type = 'Sporting Goods Store';