#!/bin/bash
TAG=10
MARIADB_PORT=3306
MARIADB_PASSWORD=password
MARIADB_ROOT_PASSWORD=password
MARIADB_DB=dbmovie
MARIADB_USER=movie
DATA_VOLUME_NAME=data_mariadb_$MARIADB_DB
NAME=mariadb_$MARIADB_DB




# create data volume storing the data
docker volume create $DATA_VOLUME_NAME

docker run -p $MARIADB_PORT:3306 \
	-e "MARIADB_ROOT_PASSWORD=$MARIADB_ROOT_PASSWORD" \
	-e "MARIADB_USER=$MARIADB_USER" \
	-e "MARIADB_PASSWORD=$MARIADB_PASSWORD" \
	-e "MARIADB_DB=$MARIADB_DB" \
	-v $PWD/sql:/docker-entrypoint-initdb.d \
	-v data-maria-dbmovie:/var/lib/mysql \
	--name $NAME \
	-d mariadb:$TAG


