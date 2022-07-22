#!/bin/bash

# Note: run this from project root: ./docker/build_cypress.sh

# get group ID of docker, for running "docker exec"
docker build --build-arg UID=$(id -u) --build-arg GID=$(getent group docker | cut -d: -f3) -f ./docker/Dockerfile_cypress -t mycypress2 .
