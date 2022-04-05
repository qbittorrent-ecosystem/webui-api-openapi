#!/bin/sh

set -eu

for d in v2*; do
    if [ -d "$d" ]; then
        mv $d/build/openapi.yaml $d/openapi.yaml
    fi
done
