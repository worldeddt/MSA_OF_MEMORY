#!/bin/bash
REPOSITORY=/var/www/html

cd $REPOSITORY/api-gateway/apigate-service

echo $(sudo pwd)
sudo ./mvnw clean package -DskipTests &&
cd $REPOSITORY/eureka_server/cloud-discovery-eureka-server &&
sudo ./mvnw clean package -DskipTests

echo "upload complete"