#!/bin/bash
source ~/simulation/ros_catkin_ws/devel/setup.bash

### LAUNCH GAZEBO
gnome-terminal -e ~/scripts/simulation.sh

sleep 5
#### LAUNCH LSD SLAM
gnome-terminal --tab -e ~/scripts/SLAM/RGBDSLAM/run_rgbd_slam.sh


### LAUNCH MISSION 
#sleep 15
#gnome-terminal -e ~/scripts/missions/mission2.sh
