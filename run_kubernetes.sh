#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=myluc/udacity-devops:proj4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 my-app --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward my-app 8000:80
