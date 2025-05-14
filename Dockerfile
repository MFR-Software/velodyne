FROM ros:humble-ros-base
SHELL ["/bin/bash", "-c"]

COPY ./src /ros2_ws/src
WORKDIR /ros2_ws

RUN apt update &&\
    rosdep update &&\
    rosdep install --from-paths src --ignore-src -y
    
RUN source /opt/ros/humble/setup.bash &&\
    colcon build

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
