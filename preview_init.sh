#!/bin/sh

source base.sh

echo "推送版本到 preview"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "repo: ${repo} train:${train} preview: ${preview_env}"
    git flow train preview ${train} ${preview_env}
done


