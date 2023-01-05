#!/bin/bash

# Build and push to Docker Hub
docker buildx build --push --platform linux/amd64,linux/arm64 -t 3bdigital/ci-tools:alpine -t 3bdigital/ci-tools:latest alpine
docker buildx build --push --platform linux/amd64,linux/arm64 -t 3bdigital/ci-tools:ubuntu ubuntu