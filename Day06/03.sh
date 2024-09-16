#!/bin/bash

# Day 6: Functions
#

read -p "Enter 1st number - " num1
read -p "Enter 2nd number - " num2

addTwoNum() {
  local total=$(($1 + $2))
  echo "total added number is  - $total"
}

addTwoNum num1 num2
