#!/bin/bash

# Set the directory to check
main_dir="Main"

# Find all empty directories within the "Main" directory recursively
find "$main_dir" -type d -empty -delete

# Print a message to indicate completion
echo "Empty directories within '$main_dir' have been deleted."