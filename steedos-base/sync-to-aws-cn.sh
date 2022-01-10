aws ecr get-login-password --region cn-northwest-1 | docker login --username AWS --password-stdin 252208178451.dkr.ecr.cn-northwest-1.amazonaws.com.cn

docker tag steedos/gitpod-workspace-base:latest 252208178451.dkr.ecr.cn-northwest-1.amazonaws.com.cn/dockerhub/steedos/gitpod-workspace-base:latest

docker push 252208178451.dkr.ecr.cn-northwest-1.amazonaws.com.cn/dockerhub/steedos/gitpod-workspace-base:latest