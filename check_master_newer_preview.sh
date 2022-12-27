#!/bin/sh

source base.sh

echo "检查master代码是否比preview代码有更新（一般在发版之前确认,看是否需要合入到preview给测试验证）"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    master_hash=`git rev-parse origin/master`
    preview_hash=`git rev-parse origin/${preview_env}`
    lcount=`git --no-pager log --oneline origin/${preview_env}..origin/master | wc -l`
    if [ $lcount -le "0" ]; then
        echo "${GREEN} repo: ${repo} master no newer ${NC}"
    else 
        echo "${RED} repo: ${repo} master has updated ${NC}"
        echo master:$master_hash preview: $preview_hash
    fi
done




