#!/usr/bin/env bash

declare -a arr=("fatodo-auth-service"
                "fatodo-chat-service"
                "fatodo-comment-service"
                "fatodo-config-server"
                "fatodo-contact-service"
                "fatodo-event-service"
                "fatodo-gateway"
                "fatodo-image-service"
                "fatodo-item-service"
                "fatodo-mail-service"
                "fatodo-notification-service"
                "fatodo-registry"
                "fatodo-user-service"
                "fatodo-ws-service"
                )

for i in "${arr[@]}"
do
  docker buildx build --load --tag "$i" --platform=linux/arm64 ../"$i"
done
