#!/bin/bash
DATABASE=pg
COMPOSE_NAME=movie_api_$DATABASE

docker compose -p $COMPOSE_NAME up -d

