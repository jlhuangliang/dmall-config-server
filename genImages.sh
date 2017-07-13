#!/usr/bin/env bash

docker build -t 127.0.0.1:5002/dmall/config-server:$BUILD_NUMBER .
docker tag 127.0.0.1:5002/dmall/config-server:$BUILD_NUMBER 127.0.0.1:5002/dmall/config-server:latest

docker push 127.0.0.1:5002/dmall/config-server:$BUILD_NUMBER
docker push 127.0.0.1:5002/dmall/config-server:latest

