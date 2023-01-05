FROM alpine:latest

# Add necessary packages
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            bash \
            curl \
            rsync \
            git \
            openssh-client \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

# Configure SSH not to do strict host key checking
RUN mkdir -p ~/.ssh \
 && echo 'StrictHostKeyChecking no' >> ~/.ssh/config