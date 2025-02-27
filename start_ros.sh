#!/bin/bash
echo Building image...

# Get the current user's UID and GID
USER_ID=$(id -u)
GROUP_ID=$(id -g)

docker build --build-arg USER_ID="$USER_ID" --build-arg GROUP_ID="$GROUP_ID" -t asdfr-ros-vnc -f Dockerfile.ros_vnc .

# This passes the webcam file to the docker container. Leave empty if it gives trouble
DEVICE_OPTION="--device=/dev/video0:/dev/video0"
# DEVICE_OPTION=""

echo Running container...
docker run \
    $DEVICE_OPTION \
    -it \
    -p 5901:5901 \
    --rm \
    --user $USER_ID:$GROUP_ID \
    -v ./workspaces:/home/rosuser/workspaces asdfr-ros-vnc