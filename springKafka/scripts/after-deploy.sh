#!/bin/bash
REPOSITORY=/var/www/html

echo "jar start" $(date -d "+9 hours") | sudo tee -a deploy.txt

cd $REPOSITORY && \
sudo chmod +x entrypoint/entrypoint-prod.sh && \
./entrypoint/entrypoint-prod.sh | sudo tee -a deploy.txt

echo "jar end" $(date -d "+9 hours") | sudo tee -a deploy.txt