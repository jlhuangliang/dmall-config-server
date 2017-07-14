#!/usr/bin/env bash

docker build -t dmall-docker-registry:5000/dmall/config-server:$BUILD_NUMBER .
docker tag dmall-docker-registry:5000/dmall/config-server:$BUILD_NUMBER dmall-docker-registry:5002/dmall/config-server:latest

docker push dmall-docker-registry:5000/dmall/config-server:$BUILD_NUMBER
docker push dmall-docker-registry:5000/dmall/config-server:latest

