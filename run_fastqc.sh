#!/bin/bash
#Description: Produce plots of per-base q-score dist for R1 and R2 reads and plots of per-base N content

#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=16GB                        #optional: amount of memory, default is 4GB

module spider fastq
module load fastqc/0.11.5

dir1=/projects/bgmp/shared/2017_sequencing/demultiplexed/11_2H_both_S9_L008_R1_001.fastq.gz 
dir2=/projects/bgmp/shared/2017_sequencing/demultiplexed/11_2H_both_S9_L008_R2_001.fastq.gz 
dir3=/projects/bgmp/shared/2017_sequencing/demultiplexed/14_3B_control_S10_L008_R1_001.fastq.gz
dir4=/projects/bgmp/shared/2017_sequencing/demultiplexed/14_3B_control_S10_L008_R2_001.fastq.gz

/usr/bin/time -v fastqc -o /projects/bgmp/temi/bioinfo/Bi623/QAA/TEST/ --extract $dir1
/usr/bin/time -v fastqc -o /projects/bgmp/temi/bioinfo/Bi623/QAA/TEST/ --extract $dir2
/usr/bin/time -v fastqc -o /projects/bgmp/temi/bioinfo/Bi623/QAA/TEST/ --extract $dir3
/usr/bin/time -v fastqc -o /projects/bgmp/temi/bioinfo/Bi623/QAA/TEST/ --extract $dir4