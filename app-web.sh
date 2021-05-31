#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  ./network.sh up
  ./env-kafka.sh up -d
  ./env-redis.sh up -d
  ./env-mongo.sh up -d
  ./env-mysql.sh up -d
  ./fatodo.sh up -d
  ./fatodo-web.sh up -d
fi

if [[ $1 == "down" ]]; then
  ./env-kafka.sh down
  ./env-redis.sh down
  ./env-mongo.sh down
  ./fatodo.sh down
  ./fatodo-web.sh down
  ./network.sh down
fi

if [[ $1 == "build" ]]; then
  ./fatodo.sh build
  ./fatodo-web.sh build
fi
