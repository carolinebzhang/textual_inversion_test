#!/bin/bash

#SBATCH -p gpu --gres=gpu:1
#SBATCH -N 1

#SBATCH -n 4
#SBATCH --mem=120g
#SBATCH --time=10:00:00
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


python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R80SM12200D002pose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/002_300 --init_word pose

python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R80SM12200D004pose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/003_400 --init_word pose

python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R80SM12200D005pose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/005_300 --init_word pose

python3 main.py --base configs/latent-diffusion/txt2img-1p4B-finetune.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R80SM12200D006pose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/006_300 --init_word pose


python3 main.py --base configs/latent-diffusion/bigger_config.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R10SM12200D001ALLpose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/001 --init_word pose

python3 main.py --base configs/latent-diffusion/bigger_config.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R10SM12200D003ALLpose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/003 --init_word pose

python3 main.py --base configs/latent-diffusion/bigger_config.yaml -t --actual_resume models/ldm/text2img-large/model.ckpt -n R10SM12200D005ALLpose --gpus 0, --no-test True --data_root distinct_angles/distinct_angles/005 --init_word pose

