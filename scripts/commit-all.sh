#!/bin/bash

if [ -z "$1" ]; then
  echo "Message argument required"
  exit 1
fi

for d in dsf-*/ ; do
  echo "Creating commit for $d"

  git -C $d commit -am "$1"
  git push
done

