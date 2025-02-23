#!/bin/bash

FILES=(
    "group_vars/all.yml"
    "host_vars/*"
)

for pattern in "${FILES[@]}"; do
    # Expand wildcard
    for file in $pattern; do
        [[ -f "$file" ]] || { echo "Skipping $file (not found)"; continue; }

        case "$1" in
            -e) echo "Encrypting $file..."; ansible-vault encrypt "$file" ;;
            -d) echo "Decrypting $file..."; ansible-vault decrypt "$file" ;;
            *) echo "Usage: $0 -e (encrypt) | -d (decrypt)"; exit 1 ;;
        esac
    done
done
