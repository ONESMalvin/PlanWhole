#!/bin/sh

source base.sh

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "${GREEN} repo: ${repo} ${NC}"
    git checkout ${preview_env}
    git pull
    git checkout master
    git pull
    master_hash=`git rev-parse master`
    perview_hash=`git rev-parse ${previe_env}`
    echo $master_hash $perview_hash
done


