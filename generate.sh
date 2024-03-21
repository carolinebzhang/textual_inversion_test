#!/bin/bash

#SBATCH -p gpu --gres=gpu:1
#SBATCH -N 1

#SBATCH -n 4
#SBATCH --mem=60g
#SBATCH --time=2:00:00
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


# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

# # should be changed the word but not number of repeats

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

# # final one with60 0across categories

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

# python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

# for front view

python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

# for march 18 side view

python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

