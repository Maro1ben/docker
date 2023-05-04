#!/bin/bash
NAME=postgres_dbmovie
POSTGRES_DB=dbmovie
POSTGRES_USER=movie

docker exec -it $NAME psql -U $POSTGRES_USER -d $POSTGRES_DB


