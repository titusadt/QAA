#!/usr/bin/env bash

#SBATCH --account=bgmp
#SBATCH --partition=interactive
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --reservation=bgmp-res

conda activate QAA

/usr/bin/time -v htseq-count --stranded=yes 14_3B_RNA_STARAligned.out.sam Mus_musculus.GRCm39.110.gtf > 14_3B_Yes.txt

/usr/bin/time -v htseq-count --stranded=reverse 14_3B_RNA_STARAligned.out.sam Mus_musculus.GRCm39.110.gtf > 14_3B_Reverse.txt

/usr/bin/time -v htseq-count --stranded=yes 11_2H_RNA_STARAligned.out.sam Mus_musculus.GRCm39.110.gtf > 11_2H_Yes.txt

/usr/bin/time -v htseq-count --stranded=reverse 11_2H_RNA_STARAligned.out.sam Mus_musculus.GRCm39.110.gtf > 11_2H_Reverse.txt
