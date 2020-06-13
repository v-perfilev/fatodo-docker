#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  ./network.sh up
  ./env-kafka.sh up -d
  ./env-elk.sh up -d
  ./env-metrics.sh up -d
  ./env-zipkin.sh up -d
  ./env-redis.sh up -d
  ./env-mongo.sh up -d
  ./fatodo.sh up -d
  ./fatodo-web.sh up -d
fi

if [[ $1 == "down" ]]; then
  ./env-kafka.sh down
  ./env-elk.sh down
  ./env-metrics.sh down
  ./env-zipkin.sh down
  ./env-redis.sh down
  ./env-mongo.sh down
  ./fatodo.sh down
  ./fatodo-web.sh down
  ./network.sh down
fi

if [[ $1 == "build" ]]; then
  ./fatodo-dev.sh build
  ./fatodo-web.sh build
fi
