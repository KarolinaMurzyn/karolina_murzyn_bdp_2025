/*

PostGIS wraz z pgAdmin, stworzony w Dockerze. 

Utworzenie nowej sieci:

docker network create pg-network


Uruchomienie kontenera z PostGIS:

docker run --name postgis \
-e POSTGRES_PASSWORD=moje_haslo \
--network=pg-network \
-p 5432:5432 \
-d postgis/postgis


kontenera z pgAdmin:

docker run --name pgAdmin \
-e PGADMIN_DEFAULT_EMAIL=moj@email.com \
-e PGADMIN_DEFAULT_PASSWORD=moje_haslo \
--network=pg-network \
-p 5050:80 \
-d dpage/pgadmin4

Interfejs pgAdmin  dostępny lokalnie 

*/
