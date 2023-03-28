#!/bin/bash

for d in dsf-*/ ; do
  echo "Pushing $d"

  git -C $d push
done
