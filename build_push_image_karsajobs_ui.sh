#!/bin/bash

#
docker build -t mhakim/karsajobs-ui:latest .

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u mhakim --password-stdin

# Mengunggah image ke Docker Hub
docker push mhakim/karsajobs-ui:latest