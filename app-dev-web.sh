#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  ./network.sh up
  ./env-redis.sh up -d
  ./env-mongo.sh up -d
  ./env-mysql.sh up -d
  ./fatodo-dev.sh up -d
  ./fatodo-web.sh up -d
fi

if [[ $1 == "down" ]]; then
  ./env-redis.sh down
  ./env-mongo.sh down
  ./env-mysql.sh down
  ./fatodo-dev.sh down
  ./fatodo-web.sh down
  ./network.sh down
fi

if [[ $1 == "build" ]]; then
  ./fatodo-dev.sh build
  ./fatodo-web.sh build
fi
