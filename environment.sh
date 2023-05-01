#! /bin/bash

if [ "$1" ]; then
    echo "ROS MASRER $1"
    export ROS_MASTER_URI=http://$1:11311
else
    echo "ROS MASRER 140.113.148.77"
    export ROS_MASTER_URI=http://140.113.148.77:11311
fi

if [ "$2" ]; then
    echo "ROS IP $2"
    export ROS_IP=$2
else
    echo "ROS IP 140.113.148.77"
    export ROS_IP=140.113.148.77
fi

source /opt/ros/noetic/setup.bash
source ~/dope/catkin_ws/devel/setup.bash
