[TOC]

###### k8s 基础

- [nginx-pod.yaml](nginx-pod.yaml) 基础的pod 配置文件,带init,带Volume
- imperative-deployment.sh 命令式脚本
- declarative-deployment.yaml 申明式配置
- controller.sh  bash写的控制器,循环,声明,清除, 根据configmap变化更新静态内容



##### CICD

- gitops-resources.yaml  SA及绑定
- gitops-cronjob.yaml  协商循环
- gitops-ci.sh 单项目ci脚本



##### 环境分区

需要一个位置存储文件,主,从,前端的部署和服务

在qa和e2e分别部署以下pod及服务

- redis-master-deployment.yaml 
- redis-master-service.yaml
- redis-slave-deployment.yaml
- redis-slave-service.yaml
- frontend-deployment.yaml     
- frontend-service.yaml  



##### 网络隔离

- curlpod.yaml  配置curl
- web.yaml  配置nginx
- block-other-namespace.yaml  ns策略



###### helm

- helm create xx , 生成环境
- guestbook.yaml  
- values-qa.yaml



###### kustomization

整体是一个项目,特点是复用

|____envs
| |____prod
| | |____kustomization.yaml
| |____qa
| | |____kustomization.yaml
| | |____debug.yaml
|____base
| |____deployment.yaml
| |____kustomization.yaml