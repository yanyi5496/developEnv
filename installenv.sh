#!/bin/bash
dockerPath="/usr/local/bin/docker-compose"
curDir=$(pwd)/docker-compose.yml
echo -e "\n \n \n"
echo -e "Email:yanyi5496@gmail.com \n"

echo -e "更新软件包 \n"

sudo apt-get update

echo -e "开始安装 \n"

apt-get install -y docker.io

echo -e "更换docker为国内源USTC \n"

sudo echo "DOCKER_OPTS=\"--registry-mirror=https://docker.mirrors.ustc.edu.cn\"" >> /etc/default/docker

echo -e "重启docker服务"

sudo service docker restart

echo -e "\n 检查docker-compose是否已安装 \n"

if [[ ! -x "$dockerPath" ]];then
        echo -e "docker-compose未安装，开始下载 docker-compose \n"
        sudo curl -L "https://developenv-1253922138.cos.ap-chengdu.myqcloud.com/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
fi
echo -e "docker-compose 安装成功 \n"

echo -e "检测当前目录是否有docker-compose.yml文件 \n"

if [[ ! -f "$curDir" ]];then
		echo -e "文件不存在，开始下载 \n"
		curl -o docker-compose.yml https://developenv-1253922138.cos.ap-chengdu.myqcloud.com/docker-compose.yml
		echo -e "docker-compose.yml下载完成 \n"
fi

sudo chmod +x /usr/local/bin/docker-compose

echo -e "启动docker容器中 \n"
sudo docker-compose up -d

