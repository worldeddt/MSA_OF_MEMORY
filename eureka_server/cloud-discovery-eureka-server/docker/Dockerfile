FROM openjdk:19
MAINTAINER EDDY
LABEL authors="worldeddt"

CMD ["./mvnw", "clean", "package", "-DskipTests"]

EXPOSE 8761

ARG JAR_FILE_PATH=./eureka_server/cloud-discovery-eureka-server/*.jar
COPY ${JAR_FILE_PATH} "cloud-discovery-eureka-server.jar"

CMD ["nohup", "java", "-jar", "cloud-discovery-eureka-server.jar", "&"]
