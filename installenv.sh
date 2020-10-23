#!/bin/bash
  
dockerPath="/usr/local/bin/docker-compose"

echo -e "Email:yanyi5496@gmail.com \n"
echo -e "开始安装 \n"

apt-get install -y docker.io

docker -v
echo -e "\n 检查docker-compose是否已安装 \n"

if [[ ! -x "$dockerPath" ]];then
        echo -e "下载 docker-compose \n"
        sudo curl -L "https://developenv-1253922138.cos.ap-chengdu.myqcloud.com/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
fi

sudo chmod +x /usr/local/bin/docker-compose
echo "docker-compose 安装成功 "
docker-compose --version

echo -e "启动docker容器中 \n"
docker-compose up -d

