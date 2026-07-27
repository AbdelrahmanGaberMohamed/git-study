#!/bin/bash
# This script runs the tests for the project.
# Exit codes:
# 0 - tests passed
# 1 - tests failed

echo "Running tests..."
ExpectedOutput="hello world!"
ActualOutput=$(python src/main.py)
if [ "$ActualOutput" == "$ExpectedOutput" ]; then
    echo "Test passed!"
    exit 0
else
    echo "Test failed!"
    echo "Expected: $ExpectedOutput"
    echo "Actual: $ActualOutput"
    exit 1
fi