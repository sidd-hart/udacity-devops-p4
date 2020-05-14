#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=siddharthakala/udacity_devops:version1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-pod --image=$dockerpath --port=8000
sleep 30 ## sleep 30 seconds for pod to get created

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-pod 8000:80
