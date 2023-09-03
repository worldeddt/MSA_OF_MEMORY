#!/bin/bash

#sudo apt install openjdk-17-jdk
echo "build start" $(date -d "+9 hours") | sudo tee -a deploy.txt
echo $(sudo ./mvnw clean package -DskipTests)
echo $(sudo mv target/*.jar apigate-service.jar)
echo $(sudo chmod 744 apigate-service.jar)
echo $(sudo nohup java -jar $(pwd)/apigate-service.jar &)
echo "build end" $(date -d "+9 hours") | sudo tee -a deploy.txt


