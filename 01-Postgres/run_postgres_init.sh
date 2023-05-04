#!/bin/bash
TAG=15.2
NAME=postgres_dbmovie
POSTGRES_PASSWORD=password
POSTGRES_PORT=5432
POSTGRES_DB=dbmovie
POSTGRES_USER=movie

docker run -p $POSTGRES_PORT:5432 \
 	-e "POSTGRES_PASSWORD=$POSTGRES_PASSWORD"  \
 	-e "POSTGRES_DB=$POSTGRES_DB"  \
 	-e "POSTGRES_USER=$POSTGRES_USER"  \
	-v $PWD/sql:/docker-entrypoint-initdb.d \
	-v data-pg-dbmovie:/var/lib/postgresql/data \
 	--name $NAME\
 	-d  postgres:$TAG


