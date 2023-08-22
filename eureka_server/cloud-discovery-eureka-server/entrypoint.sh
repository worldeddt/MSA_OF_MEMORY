#!/bin/bash

echo "build start";
echo $(sudo ./mvnw clean package -DskipTests)
echo $(sudo mv target/*.jar cloud-discovery-eureka-server.jar)
echo $(sudo chmod 744 cloud-discovery-eureka-server.jar)
echo $(sudo nohup java -jar $(pwd)/cloud-discovery-eureka-server.jar &)
echo "build end";