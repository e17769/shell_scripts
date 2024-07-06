#!/bin/bash

#Example of use:
# sh delete-empty-folders.sh ~/Documents/GitHub/link-service/link-service/shell_scripts/images/emptydir

# Check if a string argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <string>"
    exit 1
fi

# Create a new tag
git tag -a v"$1" -m "Release version "$1""

# Push the tag to GitHub
git push origin v"$1"

# Optionally, push all tags
git push origin --tags
