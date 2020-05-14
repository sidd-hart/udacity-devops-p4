#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=siddharthakala/udacity_devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat my_password.txt | docker login --username=$DOCKER_USER --password-stdin
docker tag udacity_devops $DOCKER_USER/udacity_devops:version1


# Step 3:
# Push image to a docker repository
docker push $DOCKER_USER/udacity_devops