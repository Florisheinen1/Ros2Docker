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
The `workspace` folder in this repository is linked with the `/root/ros_ws/` folder inside the docker, so any changes you make while in the docker are immediately stored on your machine and vice-versa.

## Author
Floris Heinen,
s2299909