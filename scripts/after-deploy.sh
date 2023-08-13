#!/bin/bash
REPOSITORY=/home/ubuntu

cd $REPOSITORY/api-gateway/apigate-service

echo $(sudo pwd)
sudo ./mvnw clean package -DskipTests

echo "upload complete"