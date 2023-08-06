#!/bin/bash

echo "build start";
echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar cloud-discovery-eureka-server.jar)
echo $(chmod 744 cloud-discovery-eureka-server.jar)
echo $(nohup java -jar $(pwd)/cloud-discovery-eureka-server.jar &)
echo "build end";