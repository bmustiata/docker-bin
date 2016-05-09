#!/usr/bin/env bash

docker rm -v $(docker ps -a | grep Exited | tr -s " " | cut -f1 -d\ )
docker rmi $(docker images | grep '<none>' | tr -s " " | cut -f3 -d\ )
