#!/usr/bin/env bash

dockerpath=herreraluis/machine-learning-udacity
echo "Docker ID and Image: $dockerpath"
docker login
docker push $dockerpath
