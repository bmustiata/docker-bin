#!/usr/bin/env bash

if [[ "$1" == "" ]]; then
    CONTAINER_NAME=mysqld
else # not [[ "$CONTAINER_NAME" == "" ]]
    CONTAINER_NAME="$1"
fi   # else [[ "$CONTAINER_NAME" == "" ]]

docker run \
    --name $CONTAINER_NAME\
    -e MYSQL_ROOT_PASSWORD='root' \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/group:/etc/group:ro \
    -v `pwd`:/var/lib/mysql/ \
    -v /var/run/mysqld/:/var/run/mysqld/ \
    -p 3306:3306 \
    -d \
    mysql

