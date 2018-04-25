build() {
    (cd eos && ./eosio_build.sh 2>&1 >../build.log)
}

echo "Building"

if build ; then
    echo "Build completed successfully"
else
    echo "Build failed, check build.log"
fi
