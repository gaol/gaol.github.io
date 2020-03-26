#!/bin/bash

docker run --rm -v "$(pwd):/src" -v "$(pwd)/public:/output" aoingl/docker-images:hugo --source /src --destination /output $@
