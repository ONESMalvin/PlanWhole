#!/bin/sh

source base.sh

echo "检查master分支是否相比于版本preview分支有新增提交"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "repo: ${GREEN}${repo}${NC} preview: ${preview_env} and master"
    git --no-pager log --oneline origin/${preview_env}..origin/master
done


