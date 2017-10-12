FROM ubuntu:xenial
MAINTAINER Julien ANCELIN

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y pgadmin3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/jancelin
WORKDIR /home/jancelin
RUN useradd jancelin -u 1000 -s /bin/bash
RUN chown jancelin -R /home/jancelin
USER jancelin
ENV HOME /home/jancelin

CMD pgadmin3
