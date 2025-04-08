#!/bin/bash

# Membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 mhakim/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB_PROYEK_PERTAMA_DICODING | docker login -u mhakim --password-stdin

# Mengunggah image ke Docker Hub
docker push mhakim/item-app:v1

