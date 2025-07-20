#!/bin/bash

echo "Stopping existing container..."
docker stop node-app || true
docker rm node-app || true

echo "Pulling latest image from ECR..."
docker pull 163373677956.dkr.ecr.us-east-1.amazonaws.com/node-app:latest

echo "Running container..."
docker run -d -p 80:3000 --name node-app 163373677956.dkr.ecr.us-east-1.amazonaws.com/node-app:latest

