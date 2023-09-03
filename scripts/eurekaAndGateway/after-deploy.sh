#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/eureka_server/cloud-discovery-eureka-server && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh | sudo tee -a deploy.txt && \
cd $REPOSITORY/api-gateway/apigate-service && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh | sudo tee -a deploy.txt

echo "upload complete"