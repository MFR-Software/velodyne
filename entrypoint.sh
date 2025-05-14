#!/bin/bash

ROS_PATH=/opt/ros/humble
ROS_WS_PATH=/ros2_ws

source $ROS_PATH/setup.bash
source $ROS_WS_PATH/install/setup.bash
ros2 launch velodyne velodyne-all-nodes-VLP16-launch.py