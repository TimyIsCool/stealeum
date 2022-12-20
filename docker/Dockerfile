FROM debian:stretch
LABEL maintainer="Stealeum Developers <dev@stealeum.org>"
LABEL description="Dockerised StealeumCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
