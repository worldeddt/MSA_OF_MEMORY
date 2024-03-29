#!/bin/bash

echo "build start" $(date -d "+9 hours") | sudo tee -a deploy.txt

javahome = $(echo $JAVA_HOME)

# shellcheck disable=SC1073
# shellcheck disable=SC1019
# shellcheck disable=SC1072
# shellcheck disable=SC1020
if [ -z javahome]; then
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
fi

echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar spring-kafka.jar)
echo $(chmod 744 spring-kafka.jar)
echo $(nohup java -jar -Dspring.profiles.active=prod $(pwd)/spring-kafka.jar &)
echo "build end" $(date -d "+9 hours") | sudo tee -a deploy.txt
