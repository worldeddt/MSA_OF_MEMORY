FROM openjdk:17
MAINTAINER EDDY
LABEL authors="worldeddt"
WORKDIR /home/springKafka

EXPOSE 8080

CMD ["./springKafka/mvnw", "clean", "package", "-DskipTests"]

ARG JAR_FILE_PATH=./springKafka/target/*.jar
COPY ${JAR_FILE_PATH} "spring-kafka-server.jar"

CMD ["nohup", "java", "-jar", "spring-kafka-server.jar", "&"]
