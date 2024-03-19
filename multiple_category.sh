#!/bin/bash

# Source directory containing PNG files
src_dir="/users/czhan157/Downloads/textual_inversion_test/distinct_angles/distinct_angles/001"

# Destination directory to copy selected images
dest_dir="/users/czhan157/Downloads/textual_inversion_test/distinct_angles/001_multiple"

# Total number of images to copy to the destination directory
total_images=600

# Ensure the destination directory exists, if not, create it
#mkdir -p "$dest_dir"

# Count the total number of PNG files in the source directory
num_png_files=$(find "$src_dir" -maxdepth 1 -type f -name "*.png" | wc -l)

# Calculate skip count based on the total number of images
skip_count=$((num_png_files / total_images))

# Initialize counter for copied images
copied_images=0

# Loop through the source directory and copy every nth image
for file in "$src_dir"/*.png; do
    if [ "$copied_images" -ge "$total_images" ]; then
        break
    fi

    cp "$file" "$dest_dir"
    copied_images=$((copied_images + 1))

    # Update skip count for the next iteration if needed
    if [ "$((copied_images % skip_count))" -ne 0 ]; then
        skip_count=$((num_png_files / (total_images - copied_images)))
    fi
done

echo "Copied $copied_images images to $dest_dir"
