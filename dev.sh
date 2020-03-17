#!/bin/bash

docker run --rm -v "$(pwd):/src" -v "$(pwd)/output:/output" -p1313:1313  aoingl/docker-images:hugo server -D --bind="0.0.0.0"
