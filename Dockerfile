# gokaygurcan/docker-action

FROM gokaygurcan/ubuntu:latest

ARG MAXMIND_LICENSE_KEY

LABEL maintainer "Gökay Gürcan <docker@gokaygurcan.com>"

ENV MAXMIND_LICENSE_KEY=$MAXMIND_LICENSE_KEY

USER root

RUN set -ex && \
    apt-get update -qq && \
    apt-get upgrade -yqq
    
RUN wget -q -O GeoLite2-City.tar.gz "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&date=20191224&suffix=tar.gz&license_key=$MAXMIND_LICENSE_KEY"
RUN ls -lah .

CMD echo "gokaygurcan/docker-action"
