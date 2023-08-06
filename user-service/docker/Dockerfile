FROM ubuntu:18.04
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/user-service

EXPOSE 8082

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install net-tools && \
    apt-get clean;

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
