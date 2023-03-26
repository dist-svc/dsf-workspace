#!/bin/bash

for d in dsf-*/ ; do
  echo "Fetching latest $d"

  git -C $d checkout master
  git -C $d pull
done
