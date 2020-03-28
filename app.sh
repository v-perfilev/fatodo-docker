#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  ./app-network.sh up
  ./app-kafka.sh up -d
  ./app-elk.sh up -d
  ./app-metrics.sh up -d
  ./app-zipkin.sh up -d
  ./app-mongo.sh up -d
  ./app-fatodo.sh up -d
fi

if [[ $1 == "down" ]]; then
  ./app-kafka.sh down
  ./app-elk.sh down
  ./app-metrics.sh down
  ./app-zipkin.sh down
  ./app-mongo.sh down
  ./app-fatodo.sh down
  ./app-network.sh down
fi
