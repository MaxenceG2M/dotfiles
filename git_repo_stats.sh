#!/bin/bash

check_repo_stats() {
    local unpulled=`gitC $1 log --pretty=format:'%h' ..@{u} | wc -c`
    local unpushed=`gitC $1 log --pretty=format:'%h' @{u}.. | wc -c`
    local dirty=`gitC $1 status -s|wc -c`
    local has_upstream=`gitC $1 rev-parse --abbrev-ref @{u} 2> /dev/null | wc -l`

    if [ $unpulled -ne 0 ]; then
        return -1;
    fi
    if [ $unpushed -ne 0 ]; then
        return -2;
    fi
    if [ $dirty -ne 0 ]; then
        return -3;
    fi
    if [ $has_upstream -eq 0 ]; then
        return -4;
    fi
    return 0
}

gitC() {
    local ldir=$1; shift;
    git -C "$ldir" "$@"
}

check_repo_stats $1
