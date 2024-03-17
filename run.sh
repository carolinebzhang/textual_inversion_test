#!/bin/bash

# SBATCH -p gpu --gres=gpu:1 

# SBATCH -n 4
# SBATCH -t 00:30:00
# SBATCH -mem=120G



module load cuda
conda init
conda deactivate
conda deactivate
conda activate ldm


python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n trial --gpus 0, --data_root distinct_angles/distinct_angles/001_150 --init_word front