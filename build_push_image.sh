#!/bin/bash

#Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

#Perintah untuk melihat daftar image di lokal
docker images

#Perintah untuk mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 januridp/item-app:v1

#Perintah untuk login ke Docker Hub
USERNAME="januridp"
read -s -p "Enter Docker Hub password: " PASSWORD
echo "$PASSWORD" | docker login -u $USERNAME --password-stdin
unset PASSWORD

#Perintah untuk mengunggah image ke Docker Hub
docker push januridp/item-app:v1
