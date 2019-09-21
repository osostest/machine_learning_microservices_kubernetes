#!/usr/bin/env bash
image_name=herreraluis/machine-learning
echo $image_name
docker build --tag $image_name -f Dockerfile .
docker images
docker run -ti --name=machine-learning-project -p 8000:80 $image_name
