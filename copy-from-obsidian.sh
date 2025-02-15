#!/bin/sh
#
# This script is pretty hacky
obsidian_vault_path="$HOME/Documents/Main"
blog_path="$obsidian_vault_path/Blog"

for file in $(cd "$blog_path" && rg 'published: true' --files-with-matches); do
    echo "Copying $blog_path/$file..."

    cp "$blog_path/$file" "./posts/$file"
done
