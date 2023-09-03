#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/springKafka && \
sudo chmod +x entrypoint/entrypoint-prod.sh && \
./entrypoint-prod.sh

echo "upload complete"