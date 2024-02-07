#!/usr/bin/env bash

if ! which hub &> /dev/null; then
  echo "you need to install hub"
  exit 1
fi
if [[ -z "$1" ]]; then
  echo "need to provide gh username"
  exit 1
fi

name=$1

rm -rf .git
git init
git add '.'
git commit -m "Initial commit"
#hub delete -y "$name"/my-project
hub create "$name"/my-project
git push -u origin main
