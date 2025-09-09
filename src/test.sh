#!/bin/bash

EXPECTED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [[ "$OUTPUT" == "$EXPECTED" ]]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed"
    exit 1
fi
