#!/bin/bash

if [[ $1 ]]; then
    NB_COMMIT=-$1
    echo "Take last $1 commits"
fi;

git log --format="%C(auto) %h %s" --all --branches ${NB_COMMIT} | cut -d ' ' -f 3 | grep -oP '\(\K[^\)]+'| sort | uniq -c | sort -n
