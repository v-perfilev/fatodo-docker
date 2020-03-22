#!/usr/bin/env bash

BASE_DIR=$(
  cd "$(dirname "$0")" || exit
  pwd
)

if [[ $1 == "up" ]]; then
  docker network create \
    --driver=bridge \
    --subnet=192.168.50.0/24 \
    fatodo
fi

docker-compose \
  -f "$BASE_DIR/dc-zipkin.yml" \
  -f "$BASE_DIR/dc-mongo.yml" \
  -f "$BASE_DIR/dc-fatodo.yml" \
  "$@"

if [[ $1 == "down" ]]; then
  docker network rm \
    fatodo
fi
