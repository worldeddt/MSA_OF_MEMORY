#!/bin/bash

echo "build start";

javahome = $(echo $JAVA_HOME)

# shellcheck disable=SC1073
# shellcheck disable=SC1019
# shellcheck disable=SC1072
# shellcheck disable=SC1020
if [ -z javahome]; then
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
fi

echo $(./mvnw clean package -DskipTests)
echo $(mv target/*.jar user-service.jar)
echo $(chmod 744 user-service.jar)
echo $(nohup java -jar -Dspring.profiles.active=local $(pwd)/user-service.jar &)
echo "build end";