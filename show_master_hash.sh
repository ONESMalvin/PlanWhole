#!/bin/sh

source base.sh

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    master_hash=`git rev-parse origin/master`
    echo "${repo} (master): ${master_hash: 0: 8}"
done


