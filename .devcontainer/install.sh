pip3 install -e . --user
pip3 install --user shapely==1.7.1
pip3 uninstall -y pycocotools
pip3 install --user git+https://github.com/XD7479/cocoapi.git#"egg=pycocotools&subdirectory=PythonAPI"
pip3 install --user git+https://github.com/lvis-dataset/lvis-api.git
pip3 install --user jpeg4py visdom easydict scikit-image
pip3 install --user transformers tikzplotlib motmetrics
pip3 install  --user timm
pip3 install  --user einops
# compile Deformable DETR
cd projects/UNINEXT/uninext/models/deformable_detr/ops
bash make.sh
mkdir -p projects/UNINEXT/bert-base-uncased
cd projects/UNINEXT/bert-base-uncased
wget -c https://huggingface.co/bert-base-uncased/resolve/main/config.json
wget -c https://huggingface.co/bert-base-uncased/resolve/main/vocab.txt
wget -c https://huggingface.co/bert-base-uncased/resolve/main/pytorch_model.bin
cd ../../..

mkdir -p weights
cd weights
# R50
wget -c https://dl.fbaipublicfiles.com/detectron2/ImageNetPretrained/torchvision/R-50.pkl
cd ..