#!/bin/bash

# Day 04 - if elseif else

echo "enter your age --"
read age

if [ "$age" = 18 ]; then
  echo "your age is 18"
elif [ "$age" = 19 ]; then
  echo "your age is 19"
else
  echo "your age not 18 or 19"
fi

# Integer comparisons:

# -eq: equal to
# -ne: not equal to
# -gt: greater than
# -lt: less than
# -ge: greater than or equal to
# -le: less than or equal to
# String comparisons:
#
# =: equal to
# !=: not equal to
# -z: string is empty
# -n: string is not empty
