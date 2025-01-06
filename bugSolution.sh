#!/bin/bash

# Improved script with proper error handling

set -e # Exit immediately if any command fails
trap "echo "Error: Exiting due to failure in file processing." ; exit 1" ERR

files=(
"file1.txt"
"file2.txt"
"file3.txt"
)

for file in "${files[@]}"; do
  echo "Processing: $file"
  #Check if file exists
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found." >&2
    exit 1
  fi

  # Attempt to process the file (replace with your actual processing logic)
  grep "error" "$file" || exit 1
  # Add more robust error handling
done

#If no error occurred, the script will reach here
echo "All files processed successfully"
