#!/bin/bash

# Day 05 - while until loop

num=1

while [ $num -le 5 ]; do
  echo "number is $num"
  ((num++))
done

echo

num2=1

until [ $num2 -gt 5 ]; do
  echo "number is $num2"
  ((num2++))
done
