#!/bin/bash
  
dockerPath="/usr/local/bin/docker-compose"

echo -e "Email:yanyi5496@gmail.com \n"
echo -e "开始安装 \n"

apt-get install -y docker.io

docker -v
echo -e "\n 检查docker-compose是否已安装 \n"

if [[ ! -x "$dockerPath" ]];then
        echo -e "下载 docker-compose \n"
        sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
fi

sudo chmod +x /usr/local/bin/docker-compose
echo "docker-compose 安装成功 "
docker-compose --version

echo -e "启动docker容器中 \n"
docker-compose up -d

