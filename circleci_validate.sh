#!/bin/bash
docker run --rm -v $(pwd):/data circleci/circleci-cli:alpine config validate /data/.circleci/config.yml --token $TOKEN_CIRCLECI