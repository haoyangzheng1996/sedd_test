#!/bin/bash
conda init
conda activate sedd

export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH  # use latest cuda

export CUDA_VISIBLE_DEVICES=0,1
export CUDA_LAUNCH_BLOCKING=1

python3 run_train.py

watch -n 1 nvidia-smi


