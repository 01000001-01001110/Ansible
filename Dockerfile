FROM ubuntu

# bind mount
VOLUME /workspace

# install packages
RUN apt update && apt install -q -y \
    python3-pip \
    tmux \
    vim \
    less \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

# install ansible for Python 3
RUN pip3 install ansible

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# set working directory
WORKDIR /workspace
