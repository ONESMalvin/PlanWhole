#!/bin/sh

source base.sh

echo "版本hotfix分支拉取"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    hotfix_branch = "${preview_env}_hotfix_${version}"
    echo "repo: ${repo}"
    git checkout -B ${hotfix_branch} origin/${preview_env}
    git push --set-upstream orgin ${hotfix_branch}
done


