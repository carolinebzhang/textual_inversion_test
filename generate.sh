#!/bin/bash

#SBATCH -p gpu --gres=gpu:1
#SBATCH -N 1

#SBATCH -n 4
#SBATCH --mem=60g
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

#python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

#python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

#python3 scripts/txt2img.py --outdir outputs/003 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-20T17-08-25_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

# for march 18 side view

#python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"

#python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"

#python3 scripts/txt2img.py --outdir outputs/001 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T22-29-43_trial/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#MARCH 24003_3002024-03-20T17-08-25_R50SM18600D003front
#003_3002024-03-23T11-37-55_R50SM18600D003front
#003_4002024-03-23T19-06-52_R80SM12200D004pose
#005_3002024-03-23T23-05-26_R80SM12200D005pose
#006_3002024-03-23T15-03-32_R80SM12200D006pose

#002
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#003
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10099_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#004
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"



#005
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#006
#python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/006_3002024-03-23T15-03-32_R80SM12200D006pose/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
#python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/006_3002024-03-23T15-03-32_R80SM12200D006pose/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
#python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/006_3002024-03-23T15-03-32_R80SM12200D006pose/checkpoints/embeddings_gs-6099.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#002
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_12199_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D002pose_8999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/002_3002024-03-23T15-06-19_R80SM12200D002pose/checkpoints/embeddings_gs-8999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#003
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_18299_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-18299.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10099_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R50SM18600D003front_10999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_3002024-03-23T11-37-55_R50SM18600D003front/checkpoints/embeddings_gs-10999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

#004
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_6499_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-6499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D004pose_9999_ddim35 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 35 --embedding_path logs/003_4002024-03-23T19-06-52_R80SM12200D004pose/checkpoints/embeddings_gs-9999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"



#005
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_5999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"

python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * train"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * car"
python3 scripts/txt2img.py --outdir outputs/R80SM12200D005pose_3999_ddim50 --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/005_3002024-03-23T23-05-26_R80SM12200D005pose/checkpoints/embeddings_gs-5999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt "picture of * chair"