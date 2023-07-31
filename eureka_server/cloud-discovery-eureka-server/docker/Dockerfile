FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/eureka_server
EXPOSE 8761

COPY ../entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
#COPY ../target/*.jar target/cloud-discovery-eureka-server.jar
#COPY target/*.jar target/cloud-discovery-eureka-server.jar
#CMD ["chmod", "+x", "entrypoint.sh"]
#CMD ["mv", "target/*.jar", "cloud-discovery-eureka-server.jar"]
CMD ["nohup", "java", "-jar", "target/cloud-discovery-eureka-server-0.0.1.jar", "&"]
