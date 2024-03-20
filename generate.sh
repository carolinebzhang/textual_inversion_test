#!/bin/bash
# changed the number of iterations/repeats

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * car”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * chair”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-19T13-08-52_trial/checkpoints/embeddings_gs-41999.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * train”

# should be changed the word but not number of repeats

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * chair”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * car”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/001_1502024-03-18T21-17-51_trial/checkpoints/embeddings_gs-12199.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * train”

# final one with60 0across categories

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * train”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * car”

python3 scripts/txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 2 --scale 10.0 --ddim_steps 50 --embedding_path logs/logs/001_multiple2024-03-19T19-03-57_R5SM73200D001MultipleIsidebelow/checkpoints/embeddings_gs-46499.pt --ckpt_path models/ldm/text2img-large/model.ckpt --prompt “picture of * chair”