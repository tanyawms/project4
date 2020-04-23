#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=tanyastephens/udacity-project4

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="tanyastephens"
docker login
docker tag udacity-project4:latest "$DOCKER_ID_USER"/udacity-project4:1.0

# Step 3:
# Push image to a docker repository
docker push tanyastephens/udacity-project4:1.0
