#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/api-gateway/apigate-service && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh

echo "upload complete"