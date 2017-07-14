#!/usr/bin/env bash

docker build -t docker-registry:5000/dmall/config-server:$BUILD_NUMBER .
docker tag docker-registry:5000/dmall/config-server:$BUILD_NUMBER docker-registry:5002/dmall/config-server:latest

docker push docker-registry:5000/dmall/config-server:$BUILD_NUMBER
docker push docker-registry:5000/dmall/config-server:latest

