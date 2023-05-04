#!/bin/bash
NAME=mariadb_dbmovie
MARIADB_DB=dbmovie
docker stop $NAME
docker rm -v $NAME
docker volume rm data-maria-$MARIADB_DB
