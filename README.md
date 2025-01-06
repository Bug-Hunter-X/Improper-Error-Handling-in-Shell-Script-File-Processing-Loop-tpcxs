# Shell Scripting Bug: Improper Error Handling

This repository demonstrates a common error in shell scripting: improper error handling within loops. The script attempts to process a list of files. If the processing of any file fails (e.g., the file doesn't exist or `grep` fails), the script should ideally terminate or take corrective action but instead continues running which can lead to unintended consequences and misleading output. The solution showcases how to correctly implement error handling to gracefully manage failures.

## Bug

The original script uses `|| exit 1` to terminate if a grep command fails for a single file, but this doesn't address more general file processing errors.  More robust error handling is needed to ensure that all files are processed correctly and that any failures are properly reported.

## Solution

The improved solution uses a trap and set -e to immediately exit if any command fails within the loop. This ensures that the script stops at the point of failure, preventing further operations on potentially corrupted data or unexpected results.  
