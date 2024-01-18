#!/bin/bash

echo "build OpenCV CUDA image ..."
docker build -t opencv-cuda:4.9.0-cuda12.2.2-ubuntu22.04 -f Dockerfile.ubuntu22.04 .
DOCKER_ERR=$?

if [ $DOCKER_ERR != 0 ]; then
    echo "build OpenCV CUDA image fail"
    exit 1
fi

echo "build OpenCV CUDA no GUI image ..."
docker build -t opencv-cuda-headless:4.9.0-cuda12.2.2-ubuntu22.04 -f Dockerfile.nogui.ubuntu22.04 .
DOCKER_ERR=$?

if [ $DOCKER_ERR != 0 ]; then
    echo "build OpenCV CUDA no GUI image fail"
    exit 1
fi
