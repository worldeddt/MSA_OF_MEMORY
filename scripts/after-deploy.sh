#!/bin/bash
REPOSITORY=/home/ubuntu

cd $REPOSITORY/api-gateway/apigate-service

sudo ./mvnw clean package -DskipTests

echo "upload complete"