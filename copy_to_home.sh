#!/bin/bash
# How to use this script:
# 1. Make the script executable: `chmod +x copy_to_home.sh`.
# 2. Navigate to the directory containing the files and folders you want to copy.
# 3. Run the script: `./copy_to_home.sh`.
# Before running:
# - Ensure `rsync` is installed on your system. Most Linux distributions have it pre-installed.
#   If not, you can usually install it with your package manager
# - Be cautious when copying files to your home directory, especially if there are files with the same names.
#   `rsync` will overwrite files in the destination if they have the same name and are older or different (by default).
#   You can add the `--backup` option to `rsync` if you want to keep backups of overwritten files, or `--dry-run` to see what would happen without actually copying.

# We only need the basename for exclusion if the script is in the current directory
SCRIPT_NAME=$(basename "$0")
#    - `$0` is a special variable in bash that holds the name of the script as it was called.
#    - `basename` strips any leading directory components, leaving just the filename.
#    - This is used to ensure the script doesn't try to copy itself.

# Define the destination directory
DEST_DIR="$HOME"
#    - `$HOME` is an environment variable that points to the current user's home directory (e.g., `/home/username`).

# Define the source directory (current directory)
SOURCE_DIR="."
#    - `.` refers to the current working directory from where the script is executed.

# Check if the source and destination are the same and the script is in the source.
# This is a basic safety check to prevent issues if running directly from home without thought,
# though rsync's behavior and the exclusions should generally handle it.
# A more robust check might be needed for complex scenarios, but for this request:
if [ "$(pwd)" == "$DEST_DIR" ]; then
  echo "Warning: You are running this script from your home directory."
  echo "Files will be copied within the home directory, which might be redundant."
  # Optionally, you could exit here or ask for confirmation
  # read -p "Are you sure you want to continue? (y/N) " -n 1 -r
  # echo
  # if [[ ! $REPLY =~ ^[Yy]$ ]]
  # then
  #     exit 1
  # fi
fi

echo "Starting copy process..."
echo "Source: $(pwd)"
echo "Destination: $DEST_DIR"
echo "Excluding: README.md, .git/, and $SCRIPT_NAME"

# Use rsync to copy files and directories
# -a: archive mode (preserves permissions, ownership, timestamps, recursive, etc.)
# -v: verbose, to see what's being copied
# --exclude: patterns for files/directories to exclude
# The trailing slash on SOURCE_DIR/. is important to copy the contents of the current directory
# rather than the directory itself.
rsync -av \
  --exclude='README.md' \
  --exclude='.git' \
  --exclude="$SCRIPT_NAME" \
  "$SOURCE_DIR/" "$DEST_DIR/"
# 5. `rsync -av --exclude='README.md' --exclude='.git' --exclude="$SCRIPT_NAME" "$SOURCE_DIR/" "$DEST_DIR/"`:
#    - `rsync`: A powerful utility for synchronizing files and directories.
#    - `-a` (archive): This is a shorthand for several options (`-rlptgoD`). It means:
#      - `-r`: recursive (copy directories and their contents).
#      - `-l`: copy symlinks as symlinks.
#      - `-p`: preserve permissions.
#      - `-t`: preserve modification times.
#      - `-g`: preserve group.
#      - `-o`: preserve owner (superuser only).
#      - `-D`: preserve device files and special files (superuser only).
#      It also handles hidden files (those starting with a dot) by default.
#    - `-v` (verbose): Increases the amount of information you are given during the transfer.
#    - `--exclude='README.md'`: Tells rsync not to copy any file named `README.md`.
#    - `--exclude='.git'`: Tells rsync not to copy the directory named `.git` (and its contents).
#    - `--exclude="$SCRIPT_NAME"`: Tells rsync not to copy the script file itself.
#    - `"$SOURCE_DIR/"`: Specifies the source directory. The trailing slash (`/`) is important. It tells `rsync` to copy the *contents* of the current directory. Without it, `rsync` would create a subdirectory named after the current directory inside your home directory.
#    - `"$DEST_DIR/"`: Specifies the destination directory, which is your home directory.

echo "Copy process completed."
