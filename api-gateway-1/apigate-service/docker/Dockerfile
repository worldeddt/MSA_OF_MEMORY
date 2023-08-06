FROM ubuntu:18.04
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/api_gateway

EXPOSE 8000

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install net-tools && \
    apt-get clean;

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]