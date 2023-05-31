#!/bin/bash

cp -f demo/target/*.jar jenkins/build/

echo "********** Building docker image **********"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
