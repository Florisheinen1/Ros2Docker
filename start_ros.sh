#!/bin/bash
echo Building image...
docker build -t asdfr-ros-vnc -f Dockerfile.ros_vnc .

# This passes the webcam file to the docker container. Leave empty if it gives trouble
DEVICE_OPTION="--device=/dev/video0:/dev/video0"
# DEVICE_OPTION=""

echo Running container...
docker run \
    $DEVICE_OPTION \
    -it \
    -p 5901:5901 \
    --rm \
    -v ./workspace:/root/ros_ws asdfr-ros-vnc