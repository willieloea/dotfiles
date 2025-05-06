#!/bin/bash

DOTFILES_DIR="$HOME/repo/wlegh/dotfiles"
HOME_DIR="$HOME"

echo "Synchronizing dotfiles between: $DOTFILES_DIR and: $HOME_DIR (based on modification time)"

find "$DOTFILES_DIR" -mindepth 1 -print0 | while IFS= read -r -d $'\0' item; do
  relative_path=$(echo "$item" | sed "s|^$DOTFILES_DIR/||")
  target_path="$HOME_DIR/$relative_path"

  if [ -f "$item" ]; then
    if [ -e "$target_path" ]; then
      source_modified=$(date -d "$(stat -c %y "$item")" +%s)
      target_modified=$(date -d "$(stat -c %y "$target_path")" +%s)

      if [ "$source_modified" -gt "$target_modified" ]; then
        echo "Updating: $target_path from $item (source is newer)"
        cp -f "$item" "$target_path"
      elif [ "$target_modified" -gt "$source_modified" ]; then
        echo "Updating: $item from $target_path (target is newer)"
        mkdir -p "$(dirname "$item")"
        cp -f "$target_path" "$item"
      else
        echo "Skipping: $target_path and $item (same modification time)"
      fi
    else
      echo "Copying new file to home: $item to $target_path"
      mkdir -p "$(dirname "$target_path")"
      cp -f "$item" "$target_path"
    fi
  elif [ -d "$item" ]; then
    if [ -e "$target_path" ]; then
      echo "Synchronizing directory: $item and $target_path"
      # Use rsync with the --update option to only transfer if source is newer
      rsync -avuz "$item/" "$target_path/"
      rsync -avuz "$target_path/" "$item/"
    else
      echo "Copying new directory to home: $item to $target_path"
      mkdir -p "$target_path"
      rsync -avz "$item/" "$target_path/"
    fi
  fi
done

echo "Dotfiles synchronization complete!"
