#!/usr/bin/env bash
#author billon
#docker环境的初始化配置

#使用swarm模式
docker swarm init

#创建overlay网络billon
docker network create --driver overlay --attachable billon
