#!/bin/bash

DATABASE=pg
COMPOSE_NAME=movie_api_$DATABASE
IMAGE_NAME=$(docker ps --format '{{.Image}}'| grep "$COMPOSE_NAME")


docker compose -p $COMPOSE_NAME down

docker volume rm $(docker volume ls --format '{{.Name}}'| grep "$COMPOSE_NAME")

docker image rm $IMAGE_NAME

