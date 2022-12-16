#!/bin/sh

source base.sh

echo "推送版本到 preview"

for repo in ${repo_list[*]}; do
    cd ${srcbase}/${repo}
    echo "repo: ${GREEN}${repo}${NC} train:${RED}${train}${NC} preview: ${RED}${preview_env}${NC}"
    git flow train preview ${train} ${preview_env}
done


