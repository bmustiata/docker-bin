#!/usr/bin/env bash

#
# Google's cAdvisor
#

docker run \
    --volume=/:/rootfs:ro\
    --volume=/var/run:/var/run:rw\
    --volume=/sys:/sys:ro\
    --volume=/var/lib/docker/:/var/lib/docker:ro\
    --publish=8090:8080\
    --detach=true\
    --name=cadvisor\
    google/cadvisor:latest

