#!/bin/bash
docker run --rm -t -v $(pwd):/data \
    -w /data \
    -v /var/run/docker.sock:/var/run/docker.sock \
    herreraluis/circleci-alpine local execute