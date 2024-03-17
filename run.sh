#!/bin/bash

# Request a GPU partition node and access to 1 GPU
SBATCH -p gpu --gres=gpu:2

# Request 1 CPU core
SBATCH -n 4
SBATCH -t 00:30:00
SBATCH -g 120g

# Load a CUDA module
module load cuda
conda deactivate
conda deactivate
conda activate ldm
#run script
python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n trial --gpus 0,1 --data_root distinct_angles/distinct_angles/001_150 --init_word front