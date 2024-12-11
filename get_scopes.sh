#!/bin/bash

if [[ $1 ]]; then
    NB_COMMIT=-$1
    echo "Take last $1 commits"
fi;

tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
git log --format="%C(auto) %h %s" --all --branches | cut -d ' ' -f 3 | grep -oP '\(\K[^\)]+'| tr '|' '\n' | sort > $tmpfile
sed -r -e 's:([^ ]*) +(.*):s/\\b\1\\b/\2/g:' .hook/scope.map.txt | sed -f - $tmpfile | sort | uniq -c | sort -n
rm $tmpfile
