#!/bin/bash

ensure_context() {
    set -o errexit
    cd "$(dirname "$0")"
}

build() {
    (cd eos && ./eosio_build.sh 2>&1 >../build.log)
}

echo "Building .."

ensure_context

if build ; then
    echo "Build completed successfully"
else
    echo "Build failed, check build.log"
fi
