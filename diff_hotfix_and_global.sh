#!/bin/sh

source base.sh

echo "检查 海外hotfix 分支是否相比于版本hotfix分支有新增提交"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    hotfix_branch="origin/global_hotfix_${version}"
    global_branch="origin/${preview_env}_hotfix_${version}"
    echo "----------------- repo: ${repo} global: ${} hotfix:${}"
    git --no-pager log --oneline ${global_branch}..${hotfix_branch}
done


