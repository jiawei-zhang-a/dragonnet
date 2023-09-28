#!/bin/bash
#SBATCH --job-name=ORF_Logistic
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --ntasks-per-node=1
#SBATCH --mem=80G
#SBATCH --time=23:00:00
#SBATCH --output=Logistic.out
#SBATCH --error=Logistic.err
#SBATCH --mail-type=END
#SBATCH --mail-user=jz4721@nyu.edu

module purge;

cd ../..
source venv/bin/activate
export PATH=/scratch/jz4721/Observational-Study/venv/lib64/python3.8/bin:$PATH
source ~/.bashrc

cd EconML/ORF
python OrthoForest_Logistic.py