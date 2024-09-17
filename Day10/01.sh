#!/bin/bash

# Day 10: Advanced Automation

pr=$(ps aux | grep kitty | grep -v grep)

# Check if the variable is non-empty
if [ -n "$pr" ]; then
  echo "$pr"
  exit 0
else
  echo "not found"
fi
