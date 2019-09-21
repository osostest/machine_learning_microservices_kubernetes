#!/usr/bin/env bash
dockerpath=herreraluis/machine-learning-udacity
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath machine-learning-app --port=80 
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 deployment/machine-learning-app 8000:80