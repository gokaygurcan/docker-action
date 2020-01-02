# gokaygurcan/docker-action

FROM gokaygurcan/ubuntu:latest

ARG LICENSE_KEY
ARG SHA

LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"
LABEL sha "$SHA"

ENV LICENSE_KEY=$LICENSE_KEY

USER root

RUN set -ex && \
    apt-get update -qq && \
    apt-get upgrade -yqq

CMD echo "gokaygurcan/docker-action"
