#!/bin/bash
#SBATCH -J zed
#SBATCH -o zed.%j.o
#SBATCH -e zed.%j.e
#SBATCH -p normal
#SBATCH --mail-user=gzynda@tacc.utexas.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH -t 24:00:00

ml launcher bsmap/2.91

export LAUNCHER_PLUGIN_DIR=${LAUNCHER_DIR}/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=zedList

${LAUNCHER_DIR}/paramrun
