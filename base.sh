#!/bin/sh

# 本地仓库列表
# eg: repo_list=('bang-api' 'wiki-api' 'audit-log-sync' 'ones-ai-api-common' 'ones-platform-api' 'ones-ai-docker' 'ones-plugin-node')
repo_list=('bang-api' 'wiki-api' 'ones-ai-api-common' 'ones-platform-api')

# 版本名称 下划线命名 主要作为hotfix 分支
# eg: version='3_11_25'
version='3_11_55'

# 车名 
# eg: train='v3.11.25'
train='v3.11.55'

# preview 环境 对应分支
# eg：preview_env='preview1'
preview_env='preview3'

# 仓库目录
# 最终 以 ${srcbase}/repo.git
srcbase=`echo ${GOBANG}`


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
