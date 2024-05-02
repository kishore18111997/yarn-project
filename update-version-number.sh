#!/bin/bash

current_version=$(jq -r '.version' package.json)
echo $current_version

new_version=$(echo $current_version | awk -F. '{$NF = $NF + 1;} 1' | sed 's/ /./g')
echo $new_version

jq --arg new_version "$new_version" '.version = $new_version' package.json > temp.json && mv temp.json package.json
cat package.json
