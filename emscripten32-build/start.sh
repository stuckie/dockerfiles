#!/bin/bash
docker run --rm -v `pwd`:/mnt -v `pwd`/cache:/emsdk-2.0.21/emscripten/master/cache emscripten32-build $1
