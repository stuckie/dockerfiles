#!/bin/bash
docker run --rm -v `pwd`:/mnt dotnet6-build $1
