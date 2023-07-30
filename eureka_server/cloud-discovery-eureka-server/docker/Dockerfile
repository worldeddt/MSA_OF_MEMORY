FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/eureka_server
EXPOSE 8761

#RUN apt update
#RUN apt install net-tools
#RUN apt install sudo
#RUN apt install lsof

ARG JAR_FILE_PATH="./target/*.jar"

CMD ["./mvnw", "clean", "package", "-DskipTests"]

COPY ${JAR_FILE_PATH} "cloud-discovery-eureka-server.jar"

CMD ["nohup", "java", "-jar", "cloud-discovery-eureka-server.jar", "&"]
