#!/bin/sh

source base.sh

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    #master_hash=`git rev-parse origin/master`
    #train_hash=`git rev-parse origin/train/${train}`
    #preview_hash=`git rev-parse origin/${preview_env}`
    #hotfix_hash=`git rev-parse origin/${preview_env}_hotfix_${version}`
    
    if [ "$#" == "0" ]; then
        master_hash=`git rev-parse origin/master`
        train_hash=`git rev-parse origin/train/${train}`
        preview_hash=`git rev-parse origin/${preview_env}`
        hotfix_hash=`git rev-parse origin/${preview_env}_hotfix_${version}`
        echo "${repo} \n\t(master): ${master_hash: 0: 8} \n\t(${train}): ${train_hash: 0: 8} \n\t(${preview_env}): ${preview_hash: 0: 8} \n\t(${preview_env}_hotfix_${version}): ${hotfix_hash: 0: 8}\n"
    elif [ "$1" == "master" ]; then
        master_hash=`git rev-parse origin/master`
        echo "${repo}: (master): ${master_hash: 0: 8}"
    elif [ "$1" == "train" ]; then
        train_hash=`git rev-parse origin/train/${train}`
        echo "${repo}: (${train}): ${train_hash: 0: 8}"
    elif [ "$1" == "preview" ]; then
        preview_hash=`git rev-parse origin/${preview_env}`
        echo "${repo}: (${preview_env}): ${preview_hash: 0: 8}"
    elif [ "$1" == "hotfix" ]; then
        hotfix_hash=`git rev-parse origin/${preview_env}_hotfix_${version}`
        echo "${repo}: (${preview_env}_hotfix_${version}): ${hotfix_hash: 0: 8}"
    fi
done


