#!/usr/bin/env bash

docker rm zmk 2>&1 > /dev/null
docker run -it --name zmk zmk
docker cp zmk:/app/firmware/ ./
docker stop zmk
docker rm zmk
