build() {
   ( cd eos && ./eosio_build.sh  &> build.log )
}

echo "Building"

if build ; then
    echo "Build completed successfully"
else
    echo "Build failed, check build.log"
endif
