#!/bin/bash

echo " Running CI tests..."

# simple test
if [ 10 -gt 5 ]; then
  echo Test Passed
  exit 0
else
  echo Test Failed
  exit 1
fi
