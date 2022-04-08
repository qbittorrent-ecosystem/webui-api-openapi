#!/bin/sh

set -e

for d in specs/v2*; do
    if [ -d "$d" ]; then
        npm run validate --dir="$d"
        if [ "$1" != "--dry-run" ]; then
            npm run bundle --dir="$d"
        fi
    fi
done
