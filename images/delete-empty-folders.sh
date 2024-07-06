#!/bin/bash

#Example of use:
# sh delete-empty-folders.sh ~/Documents/GitHub/link-service/link-service/shell_scripts/images/emptydir

# Check if a string argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <string>"
    exit 1
fi

# Define color codes
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'

# Print the input string
echo -e "${YELLOW}$1${BLUE}"

# Set the directory to check
#main_dir= "$1"

# view alll files
find "$1" -type d -empty

# Find all empty directories within the "Main" directory recursively
#find "$1" -type d -empty -delete

# Print a message to indicate completion
echo -e "${GREEN}Empty directories within '$1' have been deleted.${NC}"
