#!/usr/bin/env bash

docker run  \
    --detach \
    -v "$(/bin/pwd)"/static:/internal-static \
    -p 8095:8095 \
    --restart unless-stopped \
    --name 'file-server' \
    simple-server
