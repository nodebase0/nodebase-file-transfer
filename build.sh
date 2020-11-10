#!/bin/bash

SELF=$(cd `dirname $0`; pwd)

pushd $SELF
./node_modules/.bin/webpack
cp -r ./node_modules/serve-index/public dist/public
cp ./directory.html dist/directory.html
cp ./config.json dist/config.json
mkdir -p local
cd dist
zip ../local/nodebase-file-transfer.zip *
cd ..
popd
