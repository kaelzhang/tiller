#!/usr/bin/env bash

VERSION=`node -e "console.log(require('./package.json').version)" 2> /dev/null`

docker build -t kaelz/tiller:$VERSION .
