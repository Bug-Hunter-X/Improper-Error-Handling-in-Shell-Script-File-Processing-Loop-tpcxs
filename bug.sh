#!/bin/bash

# This script attempts to process a list of files but has a subtle bug.

files=(
"file1.txt"
"file2.txt"
"file3.txt"
)

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Attempt to process the file (replace with your actual processing logic)
  # The bug is here, if any file processing fails, the loop continues
  # without handling the error. 
  grep "error" "$file" || exit 1
  # Here should be a proper error handling mechanism
done

#The problematic part is that after this the script continues to execute 
# even if the grep command fails which may not be desirable

echo "All files processed"
