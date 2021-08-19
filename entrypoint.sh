#!/bin/sh -l

cd home/catkin_ws/src

vcs import --recursive --input https://raw.githubusercontent.com/ETHZ-RobotX/SuperMegaBot/master/smb.repos .

sudo rosdep init
rosdep update

rosdep install --from-paths . --ignore-src --os=ubuntu:focal -r -y

cd ..

catkin build smb_opc
