FROM ubuntu:latest

# Add necessary packages
RUN apt-get update \
 && apt-get upgrade \
 && apt-get install -y \
            curl \
            rsync \
            git \
            openssh-client \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Configure SSH not to do strict host key checking
RUN mkdir -p ~/.ssh \
 && echo 'StrictHostKeyChecking no' >> ~/.ssh/config