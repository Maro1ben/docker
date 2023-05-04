#!/bin/bash
NAME=postgres_dbmovie

docker stop $NAME
docker rm -v $NAME
