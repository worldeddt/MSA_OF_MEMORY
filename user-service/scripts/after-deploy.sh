#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/user-service && \
sudo chmod +x entrypoint/entrypoint-prod.sh && \
./entrypoint-prod.sh

echo "upload complete"