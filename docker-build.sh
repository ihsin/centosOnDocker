#!/bin/bash

if [ ! -f Dockerfile ]; then
   echo "No Dockerfile found in this directory.";
   exit 1;
fi

IMAGENAME="centos8"
IMAGETAG="latest"

# build Docker image
docker build --pull --no-cache --force-rm -t ${IMAGENAME}:${IMAGETAG} .

