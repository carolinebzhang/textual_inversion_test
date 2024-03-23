#!/bin/bash

# Set the source and destination directories
source_dir="./distinct_angles/distinct_angles/004"
destination_dir="./distinct_angles/distinct_angles/003_400"

# Create the destination directory if it doesn't exist
#mkdir -p "$destination_dir"

# Move 2500 images from the source directory to the destination directory
counter=0
for file in "$source_dir"/*; do
    if [ $counter -lt 300 ]; then
        cp "$file" "$destination_dir"
        counter=$((counter+1))
    else
        break
    fi
done

echo "300 images moved to $destination_dir"