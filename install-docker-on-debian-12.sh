#!/bin/bash

apt update -y && apt upgrade -y

apt install -y tree git rsync unzip

apt install -y ca-certificates gnupg lsb-release curl

mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update -y

apt install -y docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin

