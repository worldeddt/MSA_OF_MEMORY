FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/user-service

EXPOSE 8082

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

CMD ["nohup", "java", "-jar", "target/user-service-0.0.1.jar", "&"]
