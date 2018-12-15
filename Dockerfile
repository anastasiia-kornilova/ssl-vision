FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt full-upgrade -y
RUN apt install -y qtbase5-dev build-essential libeigen3-dev protobuf-compiler libprotobuf-dev libdc1394-22 libdc1394-22-dev cmake libv4l-0

#WORKDIR /home/adminlinux/ssl-vision
#CMD ./bin/vision

#sudo docker run --device=/dev/video0 -e DISPLAY -v $PWD:$PWD --privileged -it --net=host ssl-vision
#sudo docker build -t ssl-vision -f Dockerfile .
