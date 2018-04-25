#!/bin/bash

ensure_context() {
    set -o errexit
    cd "$(dirname "$0")"
    source include/prepare_functions.sh
}

ensure_context

#ensure_not_checked_out
#checkout "dawn-v3.0.0"
apply_patches
