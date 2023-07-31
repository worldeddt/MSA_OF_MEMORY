FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/user-service

EXPOSE 8082

CMD ["./user-service/mvnw", "clean", "package", "-DskipTests"]

ARG JAR_FILE_PATH=./user-serivce/target/*.jar
COPY ${JAR_FILE_PATH} "user-service.jar"

CMD ["nohup", "java", "-jar", "user-service.jar", "&"]
