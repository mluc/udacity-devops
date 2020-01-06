#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=myluc/udacity-devops:proj4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username myluc --password 353162b3-0a86-4354-bfc1-935913c23a54
docker tag project4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
