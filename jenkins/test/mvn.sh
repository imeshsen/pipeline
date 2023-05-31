#!/bin/bash

echo "***************Testingn**************"

project_dir="/home/imeshsenanayake/jenkins-data/pipeline/demo"

docker run --rm -v "$project_dir":/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

