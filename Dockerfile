FROM ubuntu:xenial
MAINTAINER Julien ANCELIN

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y pgadmin3  && rm -rf /var/lib/apt/lists/*
#--no-install-recommends


# Called when the Docker image is started in the container
ADD start.sh /start.sh
RUN chmod 0755 /start.sh

CMD /start.sh
