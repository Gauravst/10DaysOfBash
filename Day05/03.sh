#!/bin/bash

# Day 05 for loop break

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    echo "breaking on $i"
    break
  fi
  echo "number is - $i"
done
