FROM ubuntu:18.04
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/eureka_server
EXPOSE 8761

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y net-tools &&  \
    apt-get install -y iputils-ping && \
    apt-get clean;

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]