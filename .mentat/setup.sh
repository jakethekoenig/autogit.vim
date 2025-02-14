#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is required but not installed. Please install git first."
    exit 1
fi

# Ensure git is configured with basic settings
if [ -z "$(git config --global user.name)" ]; then
    echo "Please configure git user.name"
    exit 1
fi

if [ -z "$(git config --global user.email)" ]; then
    echo "Please configure git user.email"
    exit 1
fi
