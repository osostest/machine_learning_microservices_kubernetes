#!/usr/bin/env bash
dockerpath=herreraluis/machine-learning-udacity

# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath machine-learning-app --port=80 --labels='app=machine-learning-app'

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 deployment/machine-learning-app 8000:80

# Shows logs of containers
kubectl logs -lapp=machine-learning-app --all-containers=true
