#!/bin/bash
# Play a rosbag
cd
read -p "Enter the rosbag that you want to use: " -i "$HOME/" -e path
echo $path
rosbag play --clock $path

