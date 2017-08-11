#!/bin/bash
#SBATCH -J bwa
#SBATCH -o bwa.%j.o
#SBATCH -e bwa.%j.e
#SBATCH -p normal
#SBATCH --mail-user=gzynda@tacc.utexas.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH -t 24:00:00

module load samtools launcher bwa

export LAUNCHER_PLUGIN_DIR=${LAUNCHER_DIR}/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=bwaList

${LAUNCHER_DIR}/paramrun
