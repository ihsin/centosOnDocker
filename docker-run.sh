#!/bin/bash

CONTAINER_NAME="centos""$1"

docker run -d \
 --name ${CONTAINER_NAME} centos8:latest

[[ $? == 0 ]] && echo -e "\nCreated CentOS container with name ${CONTAINER_NAME}"

