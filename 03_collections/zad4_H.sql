CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    x DOUBLE PRECISION,
    y DOUBLE PRECISION,
    geom geometry(Point, 4326)
);


INSERT INTO input_points (x, y, geom)
VALUES 
(8.36093, 49.03174, ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326)),
(8.39876, 49.00644, ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326));



