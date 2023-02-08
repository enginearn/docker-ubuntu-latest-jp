FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y sudo neovim tzdata python3-pip && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ARG USERNAME=sudo_user
ARG GROUPNAME=sudo_user
ARG uid=1000
ARG GID=1000
ARG PASSWRD=sudo_user

RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $uid -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWRD | chpasswd && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
