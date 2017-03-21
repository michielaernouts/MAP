#!/bin/bash
source ~/simulation/ros_catkin_ws/devel/setup.bash

### GENERIC CAMERA
rosrun lsd_slam_core live_slam /image:=/erlecopter/front/image_front_raw /camera_info:=/erlecopter/front/camera_front_info

### KINECT
#rosrun lsd_slam_core live_slam /image:=/camera/rgb/image_color /camera_info:=/camera/rgb/camera_info
