#!/bin/sh

source base.sh

echo "检查master代码是否比版本车代码有更新（一般在进入集成之前确认）"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    master_hash=`git rev-parse master`
    train_hash=`git rev-parse train/${train}`
    lcount=`git --no-pager log --oneline origin/train/${train}..origin/master | wc -l`
    if [ $lcount -le 0 ]; then
        echo "${GREEN} repo: ${repo} master no newer ${NC}"
        echo master:$master_hash train: $train_hash
    else 
        echo "${RED} repo: ${repo} master has updated ${NC}"
        echo master:$master_hash train: $train_hash
    fi
done


