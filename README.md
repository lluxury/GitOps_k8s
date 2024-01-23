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



 Jsonnet

- basic.jsonnet   #可以注释
- variables.jsonnet   # 可以变量复用
- advanced.jsonnet  # 可以条件环境

加餐

- deploy-base.jsonnet # 模板

- service-base.jsonnet # 注意防呆写法,这东西和helm很像啊

- my-nginx.jsonnet # 实例,导入,实例化

- demo-svc.jsonnet  # 服务实例

- my-service.jsonnet # 部署+服务

  


监督不同环境进度

- guestbook.yaml  
- frontend-deployment.yaml, 对比并更新
- DeploymentWait.sh , 推动更新,幂等
- guestbook.yaml , 回滚
- guestbook.yaml ,合规流水线



###### replicaSet

- replicaSet.yaml  不维护状态
- deployment.yaml
- deployment2.yaml



###### 蓝绿

- blue_deployment.yaml
- blue_ingress.yaml
- green_deployment.yaml
- green_ingress.yaml  



###### ArgoCD

- bluegreen_rollout.yaml
- ingress.yaml



###### 金丝雀

- blue_deployment.yaml
- blue_ingress.yaml
- green_deployment.yaml
- canary_ingress.yaml #有变化



**ArgoCD**

- canary_rollout.yaml
- ingress.yaml



###### 渐进式

- analysis-templates.yaml # 创建模板,收集指标
- rollout-with-analysis.yaml # 主操作
- ingress.yaml



###### 访问限制

- role.yaml
- role-binding.yaml # 写的少,抄的多
- rbac.yaml  # 之前用的部署,需要更新
- updated-rbac.yaml #值得参考



###### secret

- example-secret.yaml  # 简单示例
- secret-volume.yaml   #挂载示例
- secret-environment-variable.yaml #变量示例
- secret.yaml  # api 使用
- Dockerfile-with-secret  
- vault-startup.sh  # 应用于脚本的示例
- vault-agent-inject-annotations.yaml # 注入
- vault-agent-inject-example.yaml # 自动获取注入示例
- my-password.yaml #secret yaml
- my-sealed-password.yaml # 加密后
- kustomize-secret-plugin # 引用插件
- gitopsbook/secretretriever/SecretRetriever #插件本身

