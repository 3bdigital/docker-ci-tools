FROM alpine:latest

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            bash \
            curl\
            rsync \
            openssh-client \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*