#!/bin/bash

# Build and push to Docker Hub
docker buildx build --push --platform linux/amd64,linux/arm64 -t 3bdigital/ci-tools .

# Testing commands
docker buildx build --platform linux/amd64,linux/arm64 -t 3bdigital/ci-tools .
docker build -t 3bdigital/ci-tools .