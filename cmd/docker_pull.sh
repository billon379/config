#!/usr/bin/env bash
#author billon
#解析docker/*.yml,下载镜像

#登录阿里云
docker login --username=docker-user@1326039409669702 registry.cn-beijing.aliyuncs.com

#读取docker/*.yml下的image节点,下载镜像
for yml_file in `ls ../docker/*.yml`
do
  #搜索image节点,下载镜像
  for image in `grep "image:" ${yml_file} | sed 's/image://g'`
  do
     echo -e "\033[36m================ docker pull ${image} ================\033[0m"
     docker pull ${image}
  done
done
