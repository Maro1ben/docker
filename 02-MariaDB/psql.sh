#!/bin/bash
NAME=MARIA_dbmovie
MARIADB_DB=dbmovie
MARIADB_USER=movie

docker exec -it $NAME mysql -U $MARIADB__USER -p $MARIADB_DB


