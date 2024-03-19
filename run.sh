#!/bin/bash

#SBATCH -p 3090-gcondo,gpu --gres=gpu:1
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH --mem=120G
module load miniconda3/23.11.0s
module load cuda
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

#conda init
#conda deactivate
#conda deactivate
conda deactivate
echo "$(conda env list)"
conda activate ldm
source activate ldm


python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n trial --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/001_150 --init_word side