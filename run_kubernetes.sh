#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="truefirebird/jack_devops_project4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run jack-devops-project4 --image=$dockerpath --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward jack-devops-project4 8000:80

