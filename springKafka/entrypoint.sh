#!/bin/bash

echo "build start";
echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar spring-kafka.jar)
echo $(chmod 744 spring-kafka.jar)
echo $(nohup java -jar $(pwd)/spring-kafka.jar &)
echo "build end";