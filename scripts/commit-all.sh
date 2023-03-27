#!/bin/bash

if [ -z "$1" ]; then
  echo "Message argument required"
  exit 1
fi

for d in dsf-*/ ; do
  if [[ `git -C $d status --porcelain` ]]; then
      echo "Creating commit for $d"

    git -C $d commit -am "$1"
    git push
  else
    echo "No changes for $d"
  fi
done

if [[ `git status --porcelain` ]]; then
  echo "Updating workspace"
  git commit -am "$1"
  git push
fi
