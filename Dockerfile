# https://github.com/alpinelinux/docker-alpine/issues/396
FROM node:lts-alpine3.19

RUN apk add -u curl unzip bash aws-cli
RUN touch /root/.bashrc
RUN curl -fsSL https://ion.sst.dev/install | bash

ENV PATH="$PATH:/root/.sst/bin"

# https://github.com/sst/ion/issues/45
ENV NO_BUN=true 