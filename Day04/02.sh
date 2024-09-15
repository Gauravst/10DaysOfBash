#!/bin/bash

# Day 04 - Conditional Statements if else

echo "enter your age"
read age

if [ "$age" -gt 18 ]; then
  echo "your age greater then 18"
else
  echo "your age less then 18"
fi
