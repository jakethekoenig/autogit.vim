#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is required but not installed. Please install git first."
    exit 1
fi

# Print git version for debugging purposes
git --version
