# ASDfR 25
Assignments for Advanced Software Development for Robotics, by group 25

## Installation
By running the `start_ros.sh` script, you will build the dockerfile, based on the ros image, but with:
- vnc server: For remote desktop visualization
- nano: For text editing in terminal

It will then immediately start the vnc server that will remain open as long as your interactive shell is alive.

## Remote desktop
To connect to the vnc server inside the docker, install TigerVNC for example, and log in to `localhost:5901`, with password `hackerman`. Then, you'll see the docker's desktop environment.

## Shared workspace
The `workspace` folder in this repository is linked with the `/home/rosuser/ros_ws` folder inside the docker, so any changes you make while in the docker are immediately stored on your machine and vice-versa. To ensure the "inside container user" can modify files in the shared folder made by the "outside container user" and vice-versa, the docker image is built with your outside user's ID and group ID, so they match.

## Author
Floris Heinen,
s2299909