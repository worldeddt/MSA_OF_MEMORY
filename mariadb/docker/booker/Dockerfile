FROM ubuntu:18.04
FROM mariadb:11.0.2
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/db

EXPOSE 3306

RUN apt-get update && \
    apt-get install -y net-tools &&  \
    apt-get install -y iputils-ping &&  \
    apt-get clean;