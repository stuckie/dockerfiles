#!/bin/bash
docker run --rm -v `pwd`:/mnt debian-sdl2-build $1
