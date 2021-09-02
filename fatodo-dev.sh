#!/usr/bin/env bash

BASE_DIR=$(
  cd "$(dirname "$0")" || exit
  pwd
)/docker

docker-compose \
  -f "$BASE_DIR/dc-fatodo-dev.yml" \
  "$@"
