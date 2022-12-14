#!/bin/sh

source base.sh

echo "检查hotfix分支是否相比于版本preview分支有新增提交"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    hotfix_branch="origin/${preview_env}_hotfix_${version}"
    echo "repo: ${GREEN}${repo}${NC} preview: ${preview_env} hotfix:${hotfix_branch}"
    git --no-pager log --oneline origin/${preview_env}..${hotfix_branch}
done


