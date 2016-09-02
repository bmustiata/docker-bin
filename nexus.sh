#!/usr/bin/env bash

docker run -d \
    --name nexus \
    -p 8081:8081 \
    sonatype/nexus3

