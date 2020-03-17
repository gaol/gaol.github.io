#!/bin/bash

docker run --rm -v "$(pwd):/src" -v "$(pwd)/output:/output" aoingl/docker-images:hugo $@
