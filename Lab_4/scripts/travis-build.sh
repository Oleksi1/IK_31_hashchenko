#!/bin/bash
set -ev
docker build -t hashchenko/lab_4:django-travis -f Dockerfile.site .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push hashchenko/lab_4:django-travis; else echo "PR skip deploy"; fi
docker build -t hashchenko/lab_4:monitoring-travis -f Dockerfile.monitoring .
docker images
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin; docker push hashchenko/lab_4:monitoring-travis; else echo "PR skip deploy"; fi
exit 0