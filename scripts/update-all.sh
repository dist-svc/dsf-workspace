#!/bin/bash

for d in dsf-*/ ; do
  echo "Fetching latest $d"

  git -C $d checkout main
  git -C $d pull
done
