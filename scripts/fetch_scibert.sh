#!/bin/bash
#SBATCH --job-name=test
#SBATCH --time=4-00:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --partition=pascal-crunch.p

module load CUDA/11.0.2-GCC-9.3.0 

. /home/mobashgr/miniconda3/etc/profile.d/conda.sh
conda activate base

git lfs install
git clone https://huggingface.co/bert-base-cased
