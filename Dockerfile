#Either change the below tag or set it in the run args to change the image pulled
FROM althack/ros:melodic-gazebo
RUN apt-get update && apt-get install -y
#note: env variable ROS_DISTRO should already be set in the image. If not, uncomment below line and set to your chosen ros distro:
#ENV ROS_DISTRO=melodic
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc
VOLUME /dev_ws
WORKDIR /dev_ws
ENV DISPLAY=host.docker.internal:0.0
ENV GAZEBO_IP=127.0.0.1
ENV LIBGL_ALWAYS_INDIRECT=0