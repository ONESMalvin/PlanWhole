#!/bin/sh

source base.sh

echo "版本发车！"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "repo: ${repo} 发车: ${train}"
    git pull
    git branch -d train/${train}
    git flow train start ${train}
    git flow train publish ${train}
done


