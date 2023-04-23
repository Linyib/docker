FROM pytorch-1.7.1-cuda11.0-cudnn8-devel
RUN apt-get update 
RUN apt --fix-broken install
RUN apt install sudo
RUN sudo apt-get update


RUN wget https://cmake.org/files/v3.18/cmake-3.18.0-Linux-x86_64.tar.gz
RUN tar -xzvf cmake-3.18.0-Linux-x86_64.tar.gz
RUN sudo mv cmake-3.18.0-Linux-x86_64 /opt/cmake-3.18.0
RUN sudo ln -sf /opt/cmake-3.18.0/bin/cmake  /usr/bin/cmake
RUN sudo apt install git
