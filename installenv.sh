#!/bin/bash
  
dockerPath="/usr/local/bin/docker-compose"

echo -e "Email:yanyi5496@gmail.com \n"
echo -e "开始安装 \n"

apt-get install -y docker.io

docker -v
echo -e "check docker-compose is exist \n"

if [[ ! -x "$dockerPath" ]];then
        echo -e "下载 docker-compose \n"
        sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
fi

echo -e "docker-compose downloaded \n"
sudo chmod +x /usr/local/bin/docker-compose
echo "docker-compose 安装成功 "
docker-compose --version

echo -e "准备运行 \n"
docker-compose up -d

