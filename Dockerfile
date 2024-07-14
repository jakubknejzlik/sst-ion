# https://github.com/alpinelinux/docker-alpine/issues/396
FROM node:21-alpine3.19

ARG VERSION=0.0.0

RUN apk add -u curl unzip bash aws-cli
RUN touch /root/.bashrc
RUN curl -fsSL https://ion.sst.dev/install | VERSION=${VERSION} bash

ENV PATH="$PATH:/root/.sst/bin"

# https://github.com/sst/ion/issues/45
ENV NO_BUN=true 