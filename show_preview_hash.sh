#!/bin/sh

source base.sh

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    preview_hash=`git rev-parse origin/${preview_env}`
    echo "${repo} ($preview_env): ${preview_hash: 0: 8}"
    #train_hash=`git rev-parse origin/train/${train}`
    #echo "${repo} ($train): ${train_hash}"
done


