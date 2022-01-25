#!/bin/bash
echo "updating drezael/docker-ubuntu:20.04 on branch 20.04"
docker system prune -a -f
git pull
docker build -t drezael/docker-ubuntu:20.04 -f ./DOCKERFILE .
docker push drezael/docker-ubuntu:20.04
