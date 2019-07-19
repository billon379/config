>##记录各环境的配置信息，各分支信息相互独立，不进行合并
>1. 执行cmd/docker_init.sh(让docker工作在swarm模式,创建overlay类型的网络billon)
>2. 执行cmd/docker_pull.sh(解析/docker/*.yml中的image标签,下载镜像)
>3. docker stack deploy -c xxx.yml billon部署服务