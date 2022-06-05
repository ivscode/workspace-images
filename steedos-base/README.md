# gitpod环境编译镜像并发布过程说明

## 编译
- 执行 build.sh 脚本

## 发布到hub.docker.com
- 执行 `docker push steedos/gitpod-workspace-base:latest`

## 发布到aws cn ECR
- 执行`aws configure`，登录aws cn账户
- 执行 sync-to-aws-cn.sh 脚本： `bash sync-to-aws-cn.sh`