# Ros2Docker
Not a conversion repo, but a docker image for Ros 2 with convenience installations and startup script.

## Installation
By running the `start_ros.sh` script, you will build the dockerfile, based on the ros image, but with:
- vnc server: For remote desktop visualization
- nano: For text editing in terminal
- wget: For downloading files in tutorial

It will then immediately start the vnc server that will remain open as long as your interactive shell is alive.

## Remote desktop
To connect to the vnc server inside the docker, install TigerVNC for example, and log in to `localhost:5901`, with password `hackerman`. Then, you'll see the docker's desktop environment.

## Shared workspace
The `workspaces` folder in this repository is linked with the `/home/rosuser/workspaces` folder inside the docker, so any changes you make while in the docker are immediately stored on your machine and vice-versa. To ensure the "inside docker user" can modify files in the shared folder made by the "outside docker user" and vice-versa, the docker image is built with your outside user's ID and group ID, so they match.

## Author
Floris Heinen,
s2299909