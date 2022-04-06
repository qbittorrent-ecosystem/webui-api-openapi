#!/bin/sh

set -eu

for d in specs/v2*; do
    if [ -d "$d" ]; then
        npm run validate --dir="$d"
        npm run bundle --dir="$d"
    fi
done
