#!/bin/bash

#SBATCH -p gpu --gres=gpu:1
#SBATCH -N 1

#SBATCH -n 4
#SBATCH --mem=120g
#SBATCH --time=5:00:00
module load miniconda3/23.11.0s
module load cuda
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

#conda init
#conda deactivate
#conda deactivate
#placeholder -p 3090-gcondo,gpu --gres=gpu:1
conda deactivate
echo "$(conda env list)"
conda activate ldm
source activate ldm


python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R50SM18600D003front --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/003_300 --init_word front