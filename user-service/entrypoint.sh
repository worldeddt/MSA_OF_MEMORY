#!/bin/bash

echo "build start";
echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar user-service.jar)
echo $(chmod 744 user-service.jar)
echo $(nohup java -jar $(pwd)/user-service.jar &)
echo "build end";