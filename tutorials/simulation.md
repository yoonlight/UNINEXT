# Simulation

## 20231018

```shell
STEPS=(90000,) && MAX_ITER=96000 && EXP_NAME=single_task_bridge_crack && nohup nohup python3 launch.py --np 3 --nn 1 --uni 1 --config-file projects/UNINEXT/configs/$EXP_NAME.yaml SOLVER.STEPS $STEPS SOLVER.MAX_ITER $MAX_ITER OUTPUT_DIR outputs/$EXP_NAME-$MAX_ITER > logs/$EXP_NAME-$MAX_ITER.out 2>&1 & \
disown
```
