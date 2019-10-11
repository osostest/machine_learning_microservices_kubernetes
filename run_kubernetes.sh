#!/usr/bin/env bash

dockerpath=herreraluis/machine-learning-udacity

# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 --image=$dockerpath machine-learning-app --port=80 --labels='app=machine-learning-app'

# List kubernetes pods
kubectl get pods

# while loop for pod status
while [ "$(kubectl describe pods machine-learning-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "Waiting for POD status: $(kubectl describe pods machine-learning-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
done
echo "POD status is Running"

# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 pod/machine-learning-app 80:80

# Shows logs of containers
kubectl logs -lapp=machine-learning-app --all-containers=true
