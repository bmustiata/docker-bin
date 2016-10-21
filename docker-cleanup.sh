#!/usr/bin/env bash

docker rm -v $(docker ps -a | grep Exited | tr -s " " | cut -f1 -d\ )

if [[ "$1" == "-a" ]]; then
    docker rm -v $(docker ps -a | grep Created | tr -s " " | cut -f1 -d\ )
fi # [[ "$1" == "-a" ]]

docker rmi $(docker images | grep '<none>' | tr -s " " | cut -f3 -d\ )
