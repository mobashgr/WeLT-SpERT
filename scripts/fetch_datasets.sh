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

curr_dir=$(pwd)
mkdir -p data
mkdir -p data/datasets

wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/ -P ${curr_dir}/data/datasets/conll04
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/scierc/ -P ${curr_dir}/data/datasets/scierc
wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/ade/ -P ${curr_dir}/data/datasets/ade
