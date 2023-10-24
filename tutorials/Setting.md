# Preparation

## Installation

```shell
pip3 install -e .
pip install shapely
pip install git+https://github.com/XD7479/cocoapi.git#"egg=pycocotools&subdirectory=PythonAPI"
pip install git+https://github.com/lvis-dataset/lvis-api.git
pip install jpeg4py visdom easydict scikit-image
pip install transformers tikzplotlib motmetrics
```

# compile Deformable DETR
cd projects/UNINEXT/uninext/models/deformable_detr/ops
bash make.sh

```
No such file or directory: '/usr/local/cuda/bin/nvcc'
```

change tverous/pytorch-notebook:latest into tverous/pytorch-notebook:devel

에러 해결

  File "/home/kjw/crack/UNINEXT/detectron2/data/transforms/transform.py", line 46, in ExtentTransform
    def __init__(self, src_rect, output_size, interp=Image.LINEAR, fill=0):
AttributeError: module 'PIL.Image' has no attribute 'LINEAR'. Did you mean: 'BILINEAR'?

https://stackoverflow.com/questions/76616042/attributeerror-module-pil-image-has-no-attribute-antialias

ModuleNotFoundError: No module named 'torchvision'

```shell
pip install torchvision
```

ModuleNotFoundError: No module named 'timm'

```shell
pip install timm
```

ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
detectron2 0.6 requires pycocotools>=2.0.2, but you have pycocotools 2.0 which is incompatible.

ImportError: libGL.so.1: cannot open shared object file: No such file or directory

https://stackoverflow.com/questions/55313610/importerror-libgl-so-1-cannot-open-shared-object-file-no-such-file-or-directo

```shell
apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
```

ModuleNotFoundError: No module named 'einops'

```shell
pip install einops
```

## Data Preparation

https://github.com/MasterBin-IIAU/UNINEXT/blob/master/assets/DATA.md

```
mkdir -p projects/UNINEXT/bert-base-uncased
cd projects/UNINEXT/bert-base-uncased
wget -c https://huggingface.co/bert-base-uncased/resolve/main/config.json
wget -c https://huggingface.co/bert-base-uncased/resolve/main/vocab.txt
wget -c https://huggingface.co/bert-base-uncased/resolve/main/pytorch_model.bin
cd ../../..
```

```
mkdir -p weights
cd weights
# R50
wget -c https://dl.fbaipublicfiles.com/detectron2/ImageNetPretrained/torchvision/R-50.pkl
```

## Training

https://github.com/MasterBin-IIAU/UNINEXT/blob/master/assets/MODEL_ZOO.md

```
https://maildluteducn-my.sharepoint.com/:f:/g/personal/yan_bin_mail_dlut_edu_cn/EramwIArPfVDstllO1TCXWcB3L2ZHeD6X87RtJ0k3HPZ9w?e=qcDrgf
```

```
<!-- EXP_NAME=single_task_bridge && python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/${EXP_NAME}.yaml --resume OUTPUT_DIR outputs/${EXP_NAME} -->
EXP_NAME=single_task_bridge_crack && python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/${EXP_NAME}.yaml
nohup python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/single_task_bridge_crack.yaml > 20231016_1.out 2>&1 &
```

## Dataset

폴더 구조 다음과 같이 되어야함!

```
datasets
  coco
    annotations
    train2017
      instances_train2017.json
    test2017
    val2017
```