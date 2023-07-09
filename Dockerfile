FROM ubuntu:20.04
#RUN apt-get clean && apt-get update
RUN apt update 
#  apt install --reinstall gcc-12-base=12-20220319-1ubuntu1 libtirpc3=1.3.2-2ubuntu0.1 libgcc-s1=12-20220319-1ubuntu1 libstdc++6=12-20220319-1ubuntu1
#RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y gcc make binutils gdb sudo
RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
WORKDIR /home/user