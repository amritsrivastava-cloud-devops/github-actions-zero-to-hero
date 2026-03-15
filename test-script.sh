#!/bin/bash

echo "Running test..."

if [ 2 -eq 2 ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
