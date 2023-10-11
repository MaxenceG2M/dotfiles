#!/bin/bash

git log --format="%C(auto) %h %s" --all --branches | grep -oP '\(\K[^\)]+'| sort | uniq -c | sort -n
