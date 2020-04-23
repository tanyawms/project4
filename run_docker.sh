#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f Dockerfile --tag=udacity-project4 --label=skleanapp .
# Step 2:
# List docker images
docker image ls --filter label=sklearnapp
# Step 3:
# Run flask app
docker run -p 5000:5000 udacity-project4
docker run -it --rm -p 5000:5000 --name sklearnapp udacity-project4
