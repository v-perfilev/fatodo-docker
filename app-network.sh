#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
  docker network create \
    --driver=bridge \
    --subnet=192.168.50.0/24 \
    fatodo
fi

if [[ $1 == "down" ]]; then
  docker network rm \
    fatodo
fi
