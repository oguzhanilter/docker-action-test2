#!/bin/sh -l

cd home/catkin_ws/src

vcs import --recursive --input https://raw.githubusercontent.com/ETHZ-RobotX/SuperMegaBot/master/smb.repos .

sudo rosdep init
rosdep update

rosdep install --from-paths . --ignore-src --os=ubuntu:focal -r -y

cd ..

echo "before build"

# catkin build smb_opc
catkin build smb_gazebo

echo "after build"
