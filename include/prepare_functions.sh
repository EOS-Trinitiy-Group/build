ensure_not_checked_out () {
    if [ -d "eos" ]; then
        echo "Terminating script, eos checkout done before"
        echo "Determine state of checkout manually or remove 'eos' dir and run again"
        exit 1
    fi
}

checkout() {
    tag=$1

    echo "Cloning and checking out branch: $tag"

    (git clone -q https://github.com/eosio/eos --recursive
     cd eos && git checkout -b $tag tags/$tag
     git submodule -q update --init --recursive)
}

apply_patches() {
    echo "Applying patches"

    (cd eos
     for i in ../patches.d/*.patch; do git apply $i; done)
}
