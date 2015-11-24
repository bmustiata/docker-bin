#!/usr/bin/env bash

docker run \
    --name mysqld\
    -e MYSQL_ROOT_PASSWORD='asd' \
    -v /etc/passwd:/etc/passwd:ro \
    -v `pwd`:/var/lib/mysql/ \
    -v /var/run/mysqld/:/var/run/mysqld/ \
    -p 3306:3306 \
    mysql

