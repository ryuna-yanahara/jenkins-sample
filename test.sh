#!/bin/bash
source ./calc.sh

result=$(add 2 3)
if [ "$result" -eq 6 ]; then
  echo "PASS: add 2 3 = 5"
else
  echo "FAIL: expected 5 but got $result"
  exit 1
fi
