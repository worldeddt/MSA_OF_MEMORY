#!/bin/bash
REPOSITORY=/home/ubuntu/partners

cd $REPOSITORY

#sudo /usr/bin/yarn
#sudo /usr/bin/yarn db:pull //prisma 사용했을 경우만
#sudo /usr/bin/yarn generate //prisma 사용했을 경우만 - 해당명령어는 위의 scripts의 명령어임
#sudo /usr/bin/pm2 start dist
sudo mv dist/* /var/www/html/partners/
sudo rm -rf dist

echo "upload partners complete"