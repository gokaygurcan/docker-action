# gokaygurcan/docker-action

FROM gokaygurcan/ubuntu:latest

ARG LICENSE_KEY
ENV LICENSE_KEY=$LICENSE_KEY

USER root

RUN set -ex && \
    apt-get update -qq && \
    apt-get upgrade -yqq

RUN echo $LICENSE_KEY
RUN echo ${LICENSE_KEY}
