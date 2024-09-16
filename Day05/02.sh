#!/bin/bash

#Day 05 - for with continue

for i in {1..10}; do
  if [ $i -eq 5 ]; then
    echo "skipping iteration"
    continue
  fi
  echo "number is - $i"
done
