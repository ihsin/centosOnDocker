#!/bin/bash

if [ ! -f Dockerfile ]; then
   echo "No Dockerfile found in this directory.";
   exit 1;
fi

abspath () {
        D=$(dirname "$1")
        N=$(basename "$1")
        (cd "$D"; echo "`pwd`/$N")
}

THISCMD=$(abspath "$0")
THISDIR=$(dirname $THISCMD)
THISEXE=$(basename $THISCMD)


# set image name and tag
IMAGENAME="centos8"
IMAGETAG="latest"

echo -n -e "\e[0;36;40m"
echo "#########################################################################################"
echo "# BUILD DOCKER IMAGE '${IMAGENAME}:${IMAGETAG}' ON NODE '${node}'..."
echo -n "#########################################################################################"
echo -e "\e[0m"

# build Docker image
docker build --pull --no-cache --force-rm -t ${IMAGENAME}:${IMAGETAG} .

