#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/eureka_server/cloud-discovery-eureka-server && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh

echo "upload complete"