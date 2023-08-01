FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/springKafka

EXPOSE 8080

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

CMD ["nohup", "java", "-jar", "target/springKafka-0.0.1.jar", "&"]
