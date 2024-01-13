#!/bin/bash

if [ -z "$1" ];
then
  echo "name of problem is required"
  exit
fi

mkdir ~/Documents/Github/leetcode/top_150/$1
echo "created directory"

touch ~/Documents/Github/leetcode/top_150/$1/problem.md
echo "https://leetcode.com/problems/$1/description" >> ~/Documents/Github/leetcode/top_150/$1/problem.md
echo "created problem"

touch ~/Documents/Github/leetcode/top_150/$1/solution.md
echo "# Solution 1 ``` ``` ## Results ## Notes " >> ~/Documents/Github/leetcode/top_150/$1/solution.md
echo "created solution"

echo "finished initialization"

