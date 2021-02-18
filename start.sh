#!/bin/bash

if [[ "$1" == "-rebuild" ]]; then
    docker build -t frank-base-envs -f ../franky/setup/docker/environments.dockerfile ../franky/
fi

docker-compose up --build -d