# Installation

- cuda 11.3.1
- pytorch 3.8.10
- torch 1.10.0
- torchvision 0.11.1


```dockerfile
FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /app/

# Build with some basic utilities
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    git
    ffmpeg \
    libsm6 \
    libxext6

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

# build with some basic python packages
RUN pip install \
    numpy \
    torch==1.10.0 \
    torchvision==0.11.1 \
    jupyterlab

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888
```

```shell
pip install torch==1.10.0+cu113 torchvision==0.11.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
pip3 install -e . --user
pip3 install --user shapely==1.7.1
pip3 install --user git+https://github.com/XD7479/cocoapi.git#"egg=pycocotools&subdirectory=PythonAPI"
pip3 install --user git+https://github.com/lvis-dataset/lvis-api.git
pip3 install --user jpeg4py visdom easydict scikit-image
pip3 install --user transformers tikzplotlib motmetrics
pip3 install  --user timm
pip3 install  --user einops
# compile Deformable DETR
cd projects/UNINEXT/uninext/models/deformable_detr/ops
bash make.sh
```
