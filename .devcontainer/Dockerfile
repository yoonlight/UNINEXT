FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app/

ARG DEBIAN_FRONTEND=noninteractive

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    ffmpeg \
    libsm6 \
    libxext6

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

# build with some basic python packages
RUN pip install \
    numpy \
    pip install torch==1.10.0+cu113 \
    torchvision==0.11.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html