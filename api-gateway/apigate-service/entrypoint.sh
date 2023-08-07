#!/bin/bash

#sudo apt install openjdk-17-jdk
echo "build start";
echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar apigate-service.jar)
echo $(chmod 744 apigate-service.jar)
echo $(nohup java -jar $(pwd)/apigate-service.jar &)
echo "build end";


