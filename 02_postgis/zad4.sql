CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geometry GEOMETRY(POLYGON)
);


CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geometry GEOMETRY(LINESTRING)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    name TEXT,
    geometry GEOMETRY(POINT)
);