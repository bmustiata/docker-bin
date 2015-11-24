#!/usr/bin/env bash

#
# Google's Kubernetes, deployed using docker-compose
#

cd $(dirname $0)/docker-compose-kubernetes/
./kube-up.sh

