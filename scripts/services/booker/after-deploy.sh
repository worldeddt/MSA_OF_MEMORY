#!/bin/bash
REPOSITORY=/var/www/html
echo "jar start"

cd $REPOSITORY/springKafka && \
sudo chmod +x entrypoint.sh && \
./entrypoint.sh

echo "upload complete"