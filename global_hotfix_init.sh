#!/bin/sh

source base.sh

echo "版本海外hotfix分支拉取"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "repo: ${repo}"
    git checkout -B global_hotfix_${version} ${preview_env}
    git push --set-upstream origin global_hotfix_${version}
done


