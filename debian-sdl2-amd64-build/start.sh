#!/bin/bash
docker run --rm -v `pwd`:/mnt debian-sdl2-amd64-build $1
