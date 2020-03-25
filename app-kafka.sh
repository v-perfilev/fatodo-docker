#!/usr/bin/env bash

BASE_DIR=$(
  cd "$(dirname "$0")" || exit
  pwd
)/docker

docker-compose \
  -f "$BASE_DIR/dc-kafka.yml" \
  "$@"

#if [[ $1 == "up" ]]; then
#  sleep 10
#  docker exec -it kafka-broker \
#    kafka-topics --bootstrap-server localhost:9092 \
#    --create --topic fatodo-logs --partitions 3 --replication-factor 1
#fi
