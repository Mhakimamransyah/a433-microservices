#!/bin/bash

# Membuat Docker image dari Dockerfile yang tadi dibuat.
docker build -t mhakim/order-service:v1 .

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB_PROYEK_PERTAMA_DICODING | docker login -u mhakim --password-stdin

# Mengunggah image ke Docker Hub
docker push mhakim/order-service:v1

