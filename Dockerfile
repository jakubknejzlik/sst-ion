# https://github.com/alpinelinux/docker-alpine/issues/396
FROM oven/bun:alpine

ARG VERSION=0.0.0

RUN apk add -u curl unzip bash aws-cli nodejs npm

# https://github.com/sst/ion/issues/45
ENV NO_BUN=true 