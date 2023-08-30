#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/user-service && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh

echo "upload complete"