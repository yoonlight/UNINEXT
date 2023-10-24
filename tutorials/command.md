# Command

- train

```shell
FILE_NAME=20231017_02 && nohup python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/single_task_bridge_crack.yaml > $FILE_NAME.out 2>&1 &
```

- evaluate

```shell
python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/single_task_bridge_crack.yaml --eval-only MODEL.WEIGHTS outputs/single_task_bridge_crack/model_final.pth
```

```shell
python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/single_task_bridge_crack-48000-test.yaml --eval-only MODEL.WEIGHTS outputs/single_task_bridge_crack-48000/model_final.pth
```

- print test result

```shell
EXP_CONFIG=single_task_bridge_crack-48000 && python3 projects/UNINEXT/demo.py --config-file projects/UNINEXT/configs/$EXP_CONFIG.yaml \
--input datasets/coco/test2017/*.jpg --output demo \
--task detection \
--opts MODEL.WEIGHTS outputs/$EXP_CONFIG/model_final.pth
```

```shell
EXP_CONFIG=single_task_bridge_crack-48000 && python3 projects/UNINEXT/demo.py --config-file projects/UNINEXT/configs/$EXP_CONFIG.yaml \
--input datasets/coco/val2017/061SB1P01_009110.jpg --output demo \
--task detection \
--opts MODEL.WEIGHTS outputs/$EXP_CONFIG/model_final.pth
```
