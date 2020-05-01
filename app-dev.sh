#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  ./network.sh up
  ./env-redis.sh up -d
  ./env-mongo.sh up -d
  ./fatodo-dev.sh up -d
fi

if [[ $1 == "down" ]]; then
  ./env-redis.sh down
  ./env-mongo.sh down
  ./fatodo-dev.sh down
  ./network.sh down
fi
